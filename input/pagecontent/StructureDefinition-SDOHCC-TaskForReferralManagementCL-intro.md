### Objetivo

Este perfil se utiliza para tranferir una [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCC-ServiceRequestCL.html) (campo *.focus*) creada por un profesional de la salud o una organización (campo *.requester*), dirigida a un paciente, persona relacionada o grupo (campo *.for*) a una organización proveedora de servicios. Estos campos son obligatorios. El campo *.output* se utiliza para devolver una colección de códigos de procedimientos o referencias a procedimientos realizados en cumplimiento de la derivación. 

Si la tarea se publica en el sistema de prestación de servicio y la *Solicitud de servicios (ServiceRequest)* se encuentra en un sistema diferente, la referencia debe ser absoluta. La tarea puede ser actualizada tanto por el solicitante del servicio como por el receptor. 

### Uso

#### Comprobación del estado de la tarea

Consulte [Comprobación del estado de la tarea](8-checking_taks_status.html)

#### Gestión de estado

Los valores de estado permiten un flujo completo de la tarea tanto en los sistemas solicitantes como en los ejecutores. 

Las transiciones de estado permitidas se definen gráficamente en el diagrama de estados que se encuentra a continuación y la tabla de descripción que le sigue. 

{% include img.html img="ReferralTaskStateDiagram.svg" caption="Figure 1: Referral Task State Diagram" %}

| Código | Display | Definición | Establecido por |
| ------ | ------- | ---------- | --------------- |
| `draft` | Draft | La tarea aún no está lista para ser llevada a cabo | Solicitante |
| `requested` | Requested | La tarea está lista para ser llevada a cabo y se busca la acción | Solicitante |
| `accepted` | Accepted | El ejecutante potencial ha aceptado ejecutar la tarea, pero aún no ha comenzado a trabajar | Objetivo de referencia |
| `rejected` | Rejected | El ejecutante potencial ha decidido no ejecutarlo antes de realizar cualquier acción | Objetivo de referencia |
| `canceled`  |Canceled  | La tarea no se completó | Solicitante o destinatario de referencia |
| `in-progress` | In Progress | La tarea se ha iniciado, pero aún no se ha completado | Objetivo de referencia |
| `on-hold`  |On Hold | La tarea se ha iniciado, pero el trabajo se ha pausado | Objetivo de referencia  |
| `failed` | Failed | La tarea se intentó pero no se pudo completar debido a algún error |  Objetivo de referencia |
| `completed` | Completed | La tarea se ha completado |  Objetivo de referencia |
| `entered-in-error` | Entered in Error | La tarea nunca debería haer existido y se conserva solo por la posibilidad de que se haya utilizado | Solicitante |
{:.grid}

{% include markdown-link-references.md %}