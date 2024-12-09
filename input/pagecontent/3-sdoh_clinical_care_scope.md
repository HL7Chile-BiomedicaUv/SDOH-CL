### Marco Conceptual

El contenido codificado de los SDOH se captura en las actividades básicas de atención médica: detección y evaluación, establecimiento de problemas de salud, establecimiento de objetivos/metas, planificación de la atención, intervenciones, resultados e informes. El marco conceptual, ilustrado a continuación, muestra cómo estas actividades forman un ciclo de atención. Con el tiempo, se puede hacer un seguimiento y medir el progreso de un paciente hacia los objetivos de atención.
{% include img-med.html img="marcoconceptual.png" caption="Figura 1: Marco conceptual para la atención clínica de SDOH" %}

### Alcance de esta IG

El objetivo de esta IG es estandarizar el intercambio de información SDOH relacionada con las siguientes actividades:

* Evaluación del riesgo social
* Establecer problemas/preocupaciones de salud codificados
* Crear objetivos impulsados por el paciente
* Definir un proceso de derivación de circuito cerrado RESTFUL para gestionar intervenciones

### Fuera del alcance

Los siguientes elementos están fuera del alcance de esta IG.

* Proporcionar orientación sobre la frecuencia de administración de las evaluaciones (esto queda en manos de las organizaciones responsables en función de sus estándares de práctica).
* Normas para informar medidas de calidad a pagadores u organizaciones de calidad.
* Abordar el consentimiento más allá del consentimiento para compartir información entre una entidad cubierta por la Ley N° 19.628 y entidades que no están cubiertas por esta ley.
* Actividades administrativas como verificación de elegibilidad,autorización previa o facturación de servicios de SDOH. 

### Alcance de las interacciones

El enfoque de esta IG son las interacciones entre un paciente, un proveedor y una CBO, con posible intermediación por parte de una plataforma de coordinación (CP). Las historias clínicas electrónicas y CP de los proveedores actuarán como clientes y servidores, aceptando datos de otros sistemas y permitiendo que se los consulte, mientras que también almacenan datos y recuperan datos de otros sistemas. Los sistemas de pacientes actuarán solo como clientes: accederán y, a veces, manipularán datos en otros sistemas, pero no expondrán interfaces para que otros sistemas interactúen con ellos. La IG admite interacciones con CBO que admitan una aplicación habilitada para FHIR (por ejemplo, teléfono, tablet, aplicación web) que consulte otros sistemas pero no exponga sus propios datos para consulta y manipulación, así como para consultar y, a veces, actualizar otros sistemas. En el dibujo a continuación, las flechas sólidas bidireccionales reflejan la comunicación entre dos puntos finales con servidores FHIR, mientras que las flechas sólidas unidireccionales reflejan llamadas a la API de FHIR realizadas por una aplicación habilitada para FHIR contra un servidor FHIR.

{% include img.html img="SystemDiagram.svg" caption="Figura 2: Interacciones del sistema" %}
<br>
<br>

### Marco de modelado de datos

El diagrama a continuación refleja las estructuras de datos principales y las relaciones asociadas con cada uno de los principales procesos cubiertos por esta guía de implementación: 

* Evaluación: donde se recopila información de un paciente, normalmente a través de una respuesta a un [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html) basado en un [Questionnaire](https://hl7.org/fhir/R4B/questionnaire.html) estandarizado que da como resultado una o más [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html). Estas pueden ir acompañadas de [Evaluación de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationAssessmentCL.html) adicionales. Si existen inquietudes sobre la situación de los determinantes sociales de un paciente, se definirá una [Condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html) que permitirá realizar un seguimiento de la inquietud como parte de la lista de problemas del paciente. 

* Gestión de objetivos/metas: se ha identificado un problema SDOH, se crearán las [Metas/Objetivos SDOHCC](StructureDefinition-SDOHCC-GoalCL.html) acordados entre el paciente y el médico y, con el tiempo, se actualizarán. Estas metas/objetivos se pueden asociar con la [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html), la [Evaluación de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationAssessmentCL.html) y/o la [Condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html) que busca gestionar y mejorar. En algunos casos, un objetivo también puede indicar observaciones para reflejar el resultado del objetivo.

* Gestión de derivaciones: la orden formal se captura como una [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCC-ServiceRequestCL.html) y se vincula con las [Metas/Objetivos SDOHCC](StructureDefinition-SDOHCC-GoalCL.html), la [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html), la [Evaluación de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationAssessmentCL.html) y la [Condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html) que justifica la acción. También puede vincularse con un [Consentimiento SDOHCC](StructureDefinition-SDOHCC-ConsentCL.html) que permita al destinatario de la derivación compartir información adicional. La [Tarea de SDOHCC para la gestión de derivaciones](StructureDefinition-SDOHCC-TaskForReferralManagementCL.html) coordina la solicitud y el proceso resultante, posiblemente vinculado a las acciones derivadas realizadas por el destinatario de la referencia. Finalmente, los [Procedimiento SDOHCC](StructureDefinition-SDOHCC-ProcedureCL.html) documentan las acciones llevadas a cabo. 

* Participación del paciente: permite que se realicen [Tarea SDOHCC para el paciente](StructureDefinition-SDOHCC-TaskForPatientCL.html) al paciente o a su(s) cuidador(es). Según la naturaleza de la tarea, esta puede estar vinculada a un [Questionnaire](https://hl7.org/fhir/R4B/questionnaire.html) (con un resultado en un [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html)), a un [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) que contenga un formulario en formato PDF y posteriormente otro [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) con la respuesta en PDF, a un [Servicio de salud SDOHCC](StructureDefinition-SDOHCC-HealthcareServiceCL.html) con información sobre a quién contactar, o no estar vinculada a ningún elemento en particular.

En el diagrama, las formas azules indican los perfiles definidos en esta IG y las formas amarillas indican los perfiles definidos en las IG que se tiene dependencia (Cl Core o SDC). Solo se muestran las referencias clave entre perfiles. La mayoría de los recursos de los participantes (paciente, profesional, organización, etc.) están excluidos porque se hace referencia a ellos desde la mayoría de los perfiles.

<object data="FHIRModelingV2.svg" type="image/svg+xml"></object>
<br/>
**Figure 3: Marco de modelado de datos**


{% include markdown-link-references.md %}




