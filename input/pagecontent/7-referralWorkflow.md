El flujo de trabajo general describe cómo las referencias relacionadas con SDOH pueden gestionarse de manera efectiva a través de una estructura bien definida que conecta actores, plataformas y recursos estandarizados. Las etapas de evaluación, establecimiento de objetivos e intervenciones están diseñadas para asegurar un enfoque integral en la atención del paciente, mientras que los recursos FHIR y las aplicaciones habilitadas para FHIR facilitan la interoperabilidad y el intercambio de datos entre los diferentes sistemas y actores. Este enfoque colaborativo y tecnológico es clave para abordar los riesgos sociales de manera eficiente y mejorar la salud y el bienestar de las personas. 

### Flujo de trabajo general

Está IG resplada el siguiente [flujo](3-sdoh_clinical_care_scope.html):

** 1. Evaluar al paciente para identificar riesgos sociales:** Esto puede hacerse mediante el uso de un instrumento de evaluación, a través de una conversación con el paciente o ambos métodos. Como parte de la evaluación, el paciente y el proveedor acuerdan los riesgos sociales específicos que serán clasificados como preocupaciones o problemas de salud verificados.

** 2. Establecer objetivos relacionados con el riesgo social identificado:** El paciente y el proveedor pueden definir metas conjuntas para abordar los riesgos detectados.

** 3. Acordar referencias e intervenciones para abordar los problemas y objetivos:** El paciente y el proveedor deciden sobre las acciones o servicios que se deben realizar para atender los riesgos y metas identificados. Se obtiene el consentimiento del paciente para compartir su información específica con la entidad que llevará a cabo los servicios. Posteriormente, el proveedor envía una tarea a la entidad responsable para iniciar la referencia electrónica.

La figura a continuación muestra este flujo de trabajo, los actores involucrados en cada paso y los recursos FHIR que respaldan cada etapa. 

<object data="GeneralWorkflow3.svg" type="image/svg+xml"></object>
<br/>

### Actores, sistemas e íconos

Los actores de los flujos de trabajo se describen en la siguinte tabla. Los íconos gráficos se utilizan en todo la IG.

| Actor       | Descripción  |
| ----------  | ------------------ |
| ![providericon] Proveedor | Incluye proveedores autorizados y otras personas que interactuán con el paciente para evaluar el riesgo social, establecer objetivos y determinar/recomendar derivaciones. |
| ![cboicon] Organización comunitaria (CBO) | Una organización que proporciona servicios específicos a la comunidad o a una población objetivo dentro de la comunidad. |
| ![cpicon] Plataforma de coordinación (CP) | Un intermediario entre un proveedor y una CBO que desempeña un papel en facilitar el proceso de derivación y encontrar recursos para personas en riesgo. |
| ![patienticon] Paciente | Un consumidor o cliente que es objeto de la evaluación, los objetivos, las derivaciones y los servicios prestados. El uso del término en esta IG no implica necesariamente un contexto clínico. |
| ![fhirserver] Servidor FHIR | Un servidor que admita una API FHIR y pueda realizar llamadas a la API FHIR a otros servidores. |
| ![fhirapplication] Aplicación habilitada para FHIR | Aplicación que puede realizar llamadas a la API FHIR a un servidor FHIR, pero que no admite una API FHIR por sí misma. |
| ![patientapp] Aplicación para pacientes habilitada para FHIR | Una aplicación para pacientes que puede conectarse a servidores FHIR. | 
{:.grid} 

