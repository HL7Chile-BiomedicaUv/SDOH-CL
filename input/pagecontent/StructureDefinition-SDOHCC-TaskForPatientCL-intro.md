### Objetivo
Este perfil se utiliza para transferir **tarea** creada por un profesional de la salud o una organización (campo .requester), dirigida a un paciente o una persona relacionada (campo .owner). Estos campos son obligatorios. El campo .output se utiliza para devolver una respuesta adecuada al código de la tarea solicitada.

### Uso

#### Tipos de tarea

La tabla muestra los tipos de tarea que se pueden asignar al paciente y las restricciones impuestas por cada uso que se refuerzan a través de invariantes:


|  Tipo de tarea    | Código (Task.code) | Descripción (Task.description) | Task.input |  Task.output | Task.focus |
| ----------------- | ------------------ | ------------------------------ | ---------- |------------- | -------- |
| Questionnaire (FHIR)| `complete-questionnaire` |  | Es requerido questionnaire, questionnaire-category | Si está presente, questionnaire-response   | |
| Questionnaire (PDF)| `complete-questionnaire`  | | Se requiere questionnaire-pdf y questionnaire-category | If present, questionnaire-pdf-completed   | |
| Questionnaire (URL)| `complete-questionnaire` | | Se requiere del questionnaire-url y questionnaire-category  |     | |
| Infromación general  | `general-information` | required |        | Si está presente, general-information-response |  |
| Hacer contacto Direcciones |  `make-contact` |  | Se requiere al menos una entidad de contacto | Si está presente, contacto elegido |
| Review Material | `review-material` | |  | | Se requiere referencia de un documento |
{:.grid}

#### Comprobación del estado de la tarea

Consulte [Comprobación del estado de la tarea](8-checking_taks_status.html)

#### Gestión de estado

Los valores de estado limitan la tarea a estados específicos necesarios para facilitar la comunicación con una aplicación del paciente.

Las transiciones de estado permitidas se definen gráficamente en el diagrama de estados que se encuentra a continuación y se describen en la tabla siguiente. 

{% include img.html img="PatientTaskStateDiagram.svg" caption="Figura 1: Diagrama de estado de la tarea del paciente" %}

| Código | Display | Definición | Establecido por |
| ------ | ------- | ---------- | --------------- |
| `ready` | Listo | La tarea está lista para ser realizada, pero no se ha tomado ninguna acción. Se utiliza en lugar de solicitado/recibido/aceptado/rechazado cuando se asigna y acepta la solicitud | Solicitante |
| `in-progress` | En curso | La tarea se ha iniciado, pero aún no se ha completado | Aplicación para pacientes |
| `completed` | Completado | La tarea se ha completado |  Aplicación para pacientes |
| `cancelled`  | Cancelado  | La tarea no se completó | Aplicación para el solicitante o paciente |
| `on-hold`  | En espera | La tarea se ha iniciado, pero el trabajo se ha pausado | Aplicación para pacientes |
| `failed` | Fallido | La tarea se intentó pero no se pudo completar debido a algún error | Aplicación para pacientes |
| `entered-in-error` | Ingresado por error | La tarea nunca debería haber existido y se conserva solo por la posibilidad de que se haya utilizado | Solicitante |
{:.grid}

#### Modificación de campos

Además de un conjunto limitado de valores de estado, la aplicación del paciente solo tiene permitido modificar un conjunto específico de elementos al responder a la solicitud de tarea. Estos elementos incluyen: *.status*, *.statusReason* y *.output*. Todos los demás elementps están fuera del alcance de esta IG. La aplicación del paciente no puede modificar el estado de la [Tarea de SDOHCC para la gestión de derivaciones](StructureDefinition-SDOHCC-TaskForReferralManagementCL.html); esto solo puede hacerlo el solicitante o la entidad ejecutora o intermediaria. 

{% include markdown-link-references.md %}
