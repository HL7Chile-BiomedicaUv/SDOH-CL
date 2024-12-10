El flujo de trabajo general describe cómo las referencias relacionadas con SDOH pueden gestionarse de manera efectiva a través de una estructura bien definida que conecta actores, plataformas y recursos estandarizados. Las etapas de evaluación, establecimiento de objetivos e intervenciones están diseñadas para asegurar un enfoque integral en la atención del paciente, mientras que los recursos FHIR y las aplicaciones habilitadas para FHIR facilitan la interoperabilidad y el intercambio de datos entre los diferentes sistemas y actores. Este enfoque colaborativo y tecnológico es clave para abordar los riesgos sociales de manera eficiente y mejorar la salud y el bienestar de las personas. 

### Flujo de trabajo general

Está IG resplada el siguiente [flujo de trabajo](3-sdoh_clinical_care_scope.html):

1. **Evaluar al paciente para identificar riesgos sociales:** Esto puede hacerse mediante el uso de un instrumento de evaluación, a través de una conversación con el paciente o ambos métodos. Como parte de la evaluación, el paciente y el proveedor acuerdan los riesgos sociales específicos que serán clasificados como preocupaciones o problemas de salud verificados.

2. **Establecer objetivos relacionados con el riesgo social identificado:** El paciente y el proveedor pueden definir metas conjuntas para abordar los riesgos detectados.

3. **Acordar referencias e intervenciones para abordar los problemas y objetivos:** El paciente y el proveedor deciden sobre las acciones o servicios que se deben realizar para atender los riesgos y metas identificados. Se obtiene el consentimiento del paciente para compartir su información específica con la entidad que llevará a cabo los servicios. Posteriormente, el proveedor envía una tarea a la entidad responsable para iniciar la referencia electrónica.

La figura a continuación muestra este flujo de trabajo, los actores involucrados en cada paso y los recursos FHIR que respaldan cada etapa. 

<object data="GeneralWorkflow3.svg" type="image/svg+xml"></object>
<br/>

### Actores, sistemas e íconos

Los actores de los flujos de trabajo se describen en la siguinte tabla. Los íconos gráficos se utilizan en todo la IG.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
  <thead>
    <tr>
      <th style="width:150px; height:50px;">Actor</th>
      <th style="width:350px; height:50px;">Descripción</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="Provider.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="Proveedor"> Proveedor
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Incluye proveedores autorizados y otras personas que interactúan con el paciente para evaluar el riesgo social, establecer objetivos y determinar/recomendar derivaciones.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="CBO.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="CBO"> Organización comunitaria (CBO)
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Una organización que proporciona servicios específicos a la comunidad o a una población objetivo dentro de la comunidad.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="CC.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="CC"> Plataforma de coordinación (CP)
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Un intermediario entre un proveedor y una CBO que desempeña un papel en facilitar el proceso de derivación y encontrar recursos para personas en riesgo.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="Patient.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="Patient"> Paciente
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Un consumidor o cliente que es objeto de la evaluación, los objetivos, las derivaciones y los servicios prestados. El uso del término en esta IG no implica necesariamente un contexto clínico.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="FHIRServer.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="FHIRServer"> Servidor FHIR
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Un servidor que admita una API FHIR y pueda realizar llamadas a la API FHIR a otros servidores.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="FHIRApplication.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="FHIRApplication"> Aplicación habilitada para FHIR
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Aplicación que puede realizar llamadas a la API FHIR a un servidor FHIR, pero que no admite una API FHIR por sí misma.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="width:150px; height:50px;">
        <img src="PatientApp.png" height="35px" width="35px" class="figure-img img-responsive img-rounded center-block" alt="PatientApp"> Aplicación para pacientes habilitada para FHIR
      </td>
      <td style="width:350px; height:50px;">
        <ul>
          <li>Una aplicación para pacientes que puede conectarse a servidores FHIR.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<br>

### Flujo de trabajo de coordinación de pacientes

Esta guía de implementación admite interacciones adicionales con una aplicación de paciente/cliente (en un teléfono inteligente o portal), que incluyen: 

| Functional Use Case       |  Task.code            |  Description                         | Actors           |
| ------------------------- | ----------------------- | ------------------------------------ | ---------------- |
| [Solicitud de cuestionario completo](7-referralWorkflow.html#complete-questionnaire-request)|  `complete-questionnaire` | Requesting party (e.g., provider, CBO, or CP) asks a patient to complete a questionnaire. This functionality can be used to assess social risks, inform service qualification or application, indicate reasons for cancellation, or determine the patient’s view of their interaction with the CBO and whether the service provided met their needs. | ![providericon], ![patienticon], ![cboicon], ![cpicon]  |
| [General Information Request](referral_workflow.html#general-information-request)|  `general-information-request` | Requesting party sends a patient a free text question and receives a free text response.  | ![providericon], ![patienticon], ![cboicon], ![cpicon]  |
| [Make Contact Request](referral_workflow.html#make-contact-request)|   `make-contact-directions` | Requesting party provides contact information for the CBO (in cases where the patient does not want the CBO to initiate contact). | ![providericon], ![patienticon], ![cboicon], ![cpicon]  |
| [Review Material Request](referral_workflow.html#review-material-request)|   `review-material` | Requesting party requests that the patient review a document (usually a PDF), video, etc. | ![providericon], ![patienticon], ![cboicon], ![cpicon]  |
{:.grid}

En los ejemplos siguientes, se supone que el paciente ha sido equipado con la aplicación para pacientes y que ya se ha establecido una comunicación autenticada entre la aplicación para pacientes y el solicitante. Consulte [Conexión de aplicaciones con fuentes de datos de API](9-connecting_applications_with_api_data_sources.html) para obtener más detalles. Las instancias de datos a las que se hace referencia están todas en su estado completado. En la práctica, pasarían por las transiciones de estado indicadas, con el solicitante inicializando sus campos de entrada y el paciente completando los campos de salida y actualizando el estado.

#### Solicitud de cuestionario completo
Aquí ofrecemos una vista detallada de un ejemplo de interacción entre una aplicación de paciente y un solicitante (proveedor, CBO o CP) para completar un cuestionario. El ejemplo muestra una de las cuatro formas en que se puede transmitir el cuestionario y recibir la respuesta del paciente.

<object data="PatientQuestionnaire.svg" type="image/svg+xml"></object>
<br>

| #    | De |  Descripción | Instancias implicadas |
| ---  | -- | ------------ | --------------------- |
| 1 | Paciente | Obtener tarea | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) |
| 2 | Paciente  | Obtener cuestionario, cuestionario PDF o URL del cuestionario | [Cuestionario](Questionnaire-Ejemplo-QuestionnaireHunger.html)|
| 3 | Paciente | Tarea de actualización (en curso) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
| 4 | Paciente | Responder al cuestinario o documento de referencia con el PDF completo | [QuestionnaireResponse](QuestionnaireResponse-Ejemplo-QuestionnaireRespHunger.html) |
| 5 | Paciente | Tarea de actualización (completada y referencias de salida QuestionnaireResponse) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
{:.grid}

#### Solicitud de información general
Aquí proporcionamos una vista detallada de una interacción entre una aplicación de paciente y un solicitante (proveedor, CBO o CP) para una solicitud de información general. El ejemplo muestra al paciente devolviendo una respuesta opcional.

<object data="PatientInformation.svg" type="image/svg+xml"></object>
<br>

| #    | De |  Descripción | Instancias implicadas |
| ---  | -- | ------------ | --------------------- |
| 1 |  Paciente | Obtener tarea | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) |
| 2 |  Paciente | Tarea de actualización (en curso) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
| 3 |  Paciente | Tarea de actualización (completada y Output.value incluye el texto de la respuesta) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
{:.grid}

#### Realizar solicitud de contacto
Aquí proporcionamos una vista detallada de una interacción entre una aplicación de paciente y un solicitante (proveedor, CBO o CP) para proporcionar una o más opciones entre las cuales seleccionar para hacer contacto con un servicio, proveedor u organización. El ejemplo muestra al paciente devolviendo una respuesta opcional.

<object data="PatientContact.svg" type="image/svg+xml"></object>
<br>

| #    | De |  Descripción | Instancias implicadas |
| ---  | -- | ------------ | --------------------- |
| 1 |  Paciente  | Obtener tarea [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) |
| 2 |  Paciente   | Obtener contacto | [Servicio de atención médica](HealthcareServiceEjemplo-CitadeAtencion.html) |
| 3 |  Paciente  | Tarea de actualización (en curso) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
| 4 |  Paciente  | Tarea de actualización (completada y .Output incluye el contacto seleccionado) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
{:.grid}

#### Solicitud de material de revisión
Aquí proporcionamos una vista detallada de una interacción entre una solicitud de paciente y un solicitante (proveedor, CBO o CP) para proporcionar material de revisión.

<object data="PatientReview.svg" type="image/svg+xml"></object>
<br>

| #    | De |  Descripción | Instancias implicadas |
| ---  | -- | ------------ | ---------------------
| 1 |  Paciente | Obtener tarea | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) |
| 2 |  Paciente  | Obtener referencia del documento | [Documento de referencia](DocumentReference-Ejemplo-DocumentoReferencia.html) |
| 3 |  Paciente | Tarea de actualización (en curso) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estdo cambiado |
| 4 |  Paciente | Tarea de actualización (completada) | [Tarea del paciente](Task-Ejemplo-TareaCompletadaCuestionarioRiesgo.html) con estado cambiado |
{:.grid}



{% include markdown-link-references.md %}