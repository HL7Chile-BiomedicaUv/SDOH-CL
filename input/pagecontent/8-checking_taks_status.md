### Objetivo

*Task.status* es el mecanismo de comunicación que indica el estado del cumplimiento de una derivación o una "tarea pendiente" asignada al paciente (por ejemplo, solicitada, aceptada, en progreso o completada). Establecer el estado permite al iniciador de la tarea comprender cómo (y si) está avanzando. Los value set para el estado de la [Tarea de derivación](StructureDefinition-SDOHCC-TaskForReferralManagementCL.html) y el estado de la [Tarea para el paciente](StructureDefinition-SDOHCC-TaskForPatientCL.html) son diferentes debido al propósito del intercambio: entre la entidad solicitante y la entidad intermediaria o ejecutora (Tarea de derivación](StructureDefinition-SDOHCC-TaskForReferralManagementCL.html)), en contraste con el intercambio con el paciente ([Tarea para el paciente](StructureDefinition-SDOHCC-TaskForPatientCL.html)). Consulte las páginas de los perfiles correspondientes para obtener más detalles. 

La guía en esta página detalla conceptos importantes para la implementación. Consulte el [Flujo de trabajo de referencia](8-checking_taks_status.html) para entender cómo estos conceptos encajan dentro de la orientación general. 

### Comprobación del estado de la tarea

En la mayoría de los casos, las tareas estarán alojadas dentro del sistema de "Historia Clínica Electrónica (EHR, por su sigla en inglés)" del proveedor que inicia el proceso. En este caso, el EHR siempre estará al tanto cuando la tarea sea actualizada, por lo que el desafío de monitorear las tareas recaerá únicamente en la organización proveedora de servicios. Sin embargo, también se admite que las tareas se publiquen en el servidor FHIR de una organización basada en la comunidad (CBO) o de una organización intermediaria, como lo es una plataforma de coordinación (CP), que sea responsable de gestionar el proceso de cumplimiento de la derivación. En estas circunstancias, el EHR deberá monitorear los cambios en las tareas, además de la organización proveedora de servicios. 

Los tipos de eventos relacionados con tareas que pueden ser de interés incluyen: 

**Organizaciones de prestación de servicios (CBO o CP):**
* Se ha asignado una nueva tarea a la organización.
* Se ha modificado una *Solicitud de servicio* asociada con una tarea asignada a la organización.
*Se ha cancelado una *Solicitud de servicio* asociada con una tarea asignada a la organización.

**Sistemas de EHR (Proveedor):**
* Una tarea asignada ha sido aceptada o rechazada.
* Se ha añadido resultados (*outputs*) a una tarea.
* Una tarea ha sido marcada como completada.

Existen dos mecanismos para detectar los cambios mencionados: sondeo y suscripciones.

#### Sondeo

En este modo, el sistema que necesita información (el 'cliente') realiza consultas ocasionales al sistema que mantiene las tareas y/o solicitudes de servicio relevantes para ver si hay algo "nuevo". Los clientes pueden necesitar realizar consultas contra varios servidores si las tareas y solicitudes de servicio relevantes no se mantienen en el mismo servidor. Para realizar el sondeo, el cliente llevará a cabo una [búsqueda]({{site.data.fhir.path}}search.html) de tareas filtradas para aquellas que sean propiedad o hayan sido solicitadas por la organización que realiza la búsqueda. La búsqueda también filtrará solo aquellas tareas que hayan sido creadas o modificadas desde la última vez que el servidor realizó una búsqueda. Por ejemplo: 

```[base]/Task?owner=https://example.com/fhir/Organization/123&_lastupdated=gt2021-05-03T17:23:18.1732-04:00```
o
```[base]/Task?requester=https://example.com/fhir/Organization/456&_lastupdated=gt2021-05-03T17:23:18.1732-04:00```

La marca de tiempo especificada sería el resultado de búsqueda devuelto de la última consulta. 

Si es posible tener tareas no asignadas, es decir, cuando la organización encargada de realizar el servicio no está preidentificada y la tarea está abierta para que cualquiera que desee reclamarla la ejecute, las organizaciones interesadas en examinar las tareas disponibles para reclamar realizarían el sondeo de la siguiente manera: 

```[base]/Task?owner:missing=true&status=requested&_lastupdated=gt2021-05-03T17:23:18.1732-04:00```

La frecuencia del sondeo debe ser lo suficientemente alta como para permitir una respuesta oportuna a los cambios, sin imponer una carga excesiva sobre el rendimiento del sistema. Los sistemas que utilizan sondeo DEBEN verificar si hay información nueva o actualizada al menos una vez por día hábil y DEBERÍAN verificar la información al menos una vez por hora durante las horas normales de operación. Los sistemas NO DEBERÍAN realizar consultas más frecuentes cada 15 minutos, a menos que haya un cambio urgente que estén monitoreando. 

#### Suscripción

En el mecanismo de suscripción, en lugar de que el sistema cliente consulte regularmente al servidor para ver si hay nuevas tareas o cambios en las tareas existentes, el cliente crea una instancia de [Suscripción](http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription) en el servidor que indica que desea ser notificado sobre cambios en las tareas y, en la suscripción, proporciona filtros que describen qué subconjunto de tareas le interesa. El servidor luego enviará notificaciones cuando haya nuevas tareas, y el cliente podrá consultar las tareas específicas que hayan cambiado. 

Esta funcionalidad se basa en la guía de implementación denominada [R5 Subscription backport](http://hl7.org/fhir/uv/subscriptions-backport). Esta guía de implementación permite la adopción anticipada del enfoque de suscripción basado en temas de FHIR R5 en implementaciones R4. Los implementadores de esta IG que elijan soportar "Suscripción" deben cumplir con la guía de implementación "Subscription Backport IG" para el propósito de monitorear tareas y, si es necesario, solicitudes de servicio. 

Los sistemas de proveedor y CBO pueden optar por permitir que las CBOs y los sistemas de pacientes que reciben notificaciones por correo electrónico o SMS configuren sus suscripciones fuera de banda (es decir, sin necesidad de hacer un POST de un recurso [Suscripción](http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription) para crear una suscripción o un PUT de un recurso [Suscripción](http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription) para actualizar la ubicación de correo electrónico o SMS a la que se enviarán las notificaciones).

Los servidores que soportan suscripciones DEBEN soportar el mecanismo de canal rest-hook y correo electrónico. PUEDEN soportar el mecanismo de canal SMS (ver más abajo). Al actuar como clientes de suscripción, los EHR, CPs y CBOs habilitados para FHIR Server DEBEN soportar rest-hook. Las CBOs habilitadas para FHIR-Application y los pacientes típicamente recibirán notificaciones a través de correo electrónico o SMS. En este caso, la notificación va a un usuario en lugar de al sistema, y el usuario desencadena su sistema para recuperar los registros al abrir su aplicación. Los servidores DEBEN soportar tanto JSON como XML y los clientes DEBERÁN soportar al menos uno de estos formatos. Los clientes y servidores DEBEN soportar solo el ID significa que se proporcionará el ID de la tarea o solicitud de servicio que fue actualizada o creada. Luego, el cliente realizará una lectura o una consulta para recuperar los registros especificados en la notificación de suscripción. Por ejemplo:

<code>[base]/Task?_id=1234,5678</code>

Si se utiliza la búsqueda, el cliente PUEDE utilizar <*_include=Task:focus* para recuperar también la solicitud de servicio referenciada. Por ejemplo: 

<code>[base]/Task?_id=1234,5678&_include=Task:focus</code>

##### Canal de suscripción por SMS

Según los comentarios de los implementadores, esta IG aprovecha un código *customChannelType* adicional que se define en la especificación principal de FHIR R4, pero que no está incluido en el value set de Backport de suscripción de R5. Este código "sms" se puede utilizar para enviar notificaciones a través de un dispositivo SMS en lugar de correo electrónico o rest-hook. Dichas notificaciones DEBEN incluir solo un mensaje breve legible por humanos que indique la identificación de la suscripción y un mensaje breve que indique que hay contenido actualizado disponible. *Suscription.contentType* DEBE ser "omit" por razones de seguridad y de ancho de banda. El mensaje SMS NO DEBE incluir en realidad un Bundle de notificación de suscripción. El uso de este enfoque es experimental y se agradecen los comentarios. El punto final se completará con el número de teléfono al que se enviará el mensaje SMS, expresado de conformidad con rfc3966, es decir,"tel:seguido de los dígitos del número de teléfono".

{% include markdown-link-references.md %}