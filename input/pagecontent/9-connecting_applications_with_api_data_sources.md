Esta Guía de implementación (IG) proporciona especificaciones recomendadas para la sincronización de aplicaciones de pacientes y organizaciones comunitarias (CBO) con fuentes de datos API para información SDOH según se define en esta IG.

La siguiente información sirve para establecer conexiones que permitan el intercambio de información (ver en la sección [Flujo de trabajo de referencia](7-referralWorkflow.html)). 

### Requisitos

El objetivo de esta sección es estandarizar aún más las interacciones entre las API de FHIR y las aplicaciones de consumidor o CBO. Para lograrlo, recomendamos que todas las plataformas y aplicaciones de referencia DEBEN admitir los siguientes procesos para permitir que los procesos consistentes accedan a los datos. Las declaraciones de capacidad proporcionan especificaciones adicionales para los servidores.

#### Aplicaciones para pacientes/clientes

Las interacciones entre las aplicaciones de pacientes/clientes habilitadas para FHIR y los proveedores o las CBO se describen en el [Flujo de trabajo de coordinación de pacientes](7-referralWorkflow.html#flujo-de-trabajo-de-coordinación-de-pacientes) . Esta sección describe la conexión inicial de la aplicación de pacientes/clientes con el sistema de origen de derivación (proveedor) o destino de derivación (CBO).

1. Las solicitudes se registran en las plataformas de referencia correspondientes.
2. En el primer uso de la aplicación:
    * Se proporciona al paciente/cliente una URL o un código QR. El paciente utiliza esta información para encontrar la aplicación e instalarla en su dispositivo móvil o para iniciar una aplicación en línea. Opcionalmente, se le puede proporcionar al paciente/cliente una URL o un código para identificar la plataforma de derivación a la aplicación. Alternativamente, el paciente puede seleccionar la clínica/instalación de una lista dentro de la aplicación. 
    *  Una vez que el usuario haya proporcionado la información necesaria para conectarse a la plataforma de referencia, o haya seleccionado la plataforma, la aplicación intentará acceder a la API FHIR de la plataforma de referencia y será redirigida según el [proceso de autenticación de la aplicación SMART](https://www.hl7.org/fhir/smart-app-launch/app-launch.html#launch-app-standalone-launch) de la plataforma.
    * En esta autenticación inicial, el usuario aún no tendrá credenciales de autorización y deberá crear una nueva "cuenta". El servidor de autorización verificará la identidad del usuario utilizando credenciales conocidas por el proveedor de atención médica o proporcionadas por él (por ejemplo, dirección de correo electrónico, fecha de nacimiento, código de registro, etc.).
    * El paciente/cliente establece credenciales (nombre de usuario/contraseña) que se utilizarán en el futuro para autenticar al usuario en la aplicación.
3. La URL de la API (y posiblemente el nombre de usuario y la contraseña) se almacenan en la aplicación.
4. Cuando el paciente/cliente se autentica en la aplicación, según un cronograma o bajo demanda
    * La aplicación auténtica o permite que el usuario se autentique en la plataforma de referencia y recibe un token de acceso. 
    * La aplicación utiliza el token de acceso y,si es necesario, el token de actualización para mantener una conexión autenticada.
5. La aplicación consulta tareas, solicitudes de servicio y otros datos referenciados y/o actualiza tareas y envía recursos como respuestas a cuestionarios.

NOTA: los pasos 3 a 5 se repiten para cada fuente de referencia.

#### Solicitudes CBO

Esta sección describe la conexión inicial de la aplicación CBO habilitada para FHIR a la fuente de referencia (proveedor o sistema de plataforma de coordinación).

1. Las solicitudes de CBO participantes se registran en las plataformas de referencia adecuadas.
2. La fuente de referencia proporciona a CBO (por ejemplo, a través de un código QR) una URL a la API que redirecciona a un servidor de autorización.
    * CBO ingresa credenciales proporcionadas por la plataforma de referencia
    * La aplicación está provista de un token de acceso y un token de actualización
3. La URL de la API y los tokens se almacenan en la aplicación.
4. Cuando el CBO se autentica en la aplicación, según un cronograma establecido o a pedido
    * La aplicación utiliza la URL y el token de actualización para obtener un token de acceso
5. La aplicación consulta datos relevantes, incluidas las tareas que se les asignaron, las tareas asignadas a otros, los datos demográficos del paciente (propio), los objetivos, las solicitudes de servicio, etc.

NOTA: los pasos 2 a 5 se repiten para cada fuente de referencia.