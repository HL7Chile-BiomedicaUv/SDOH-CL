Instance: Ejemplo-SolicitudInformacionTarea
InstanceOf: SDOHCCTaskForPatientCL
Usage: #example
Title: "Ejemplo SDOHCC-Solicitud de información del paciente en la tarea."
Description: "Ejemplo de una tarea completada para el paciente, donde la tarea consistió en una solicitud de información."

* status = #completed
* intent = #order
* priority = #routine

* code = SDOHCCCodeSystemTemporaryCodesCL#general-information "Información general"
* description = "¿Prefiere un vale de comida para Safeway o Líder?"

* for = Reference(Ejemplo-Paciente) "María Díaz"
* authoredOn = "2020-09-12T21:56:54.671Z"

* requester = Reference(Ejemplo-Organizacionprestadora)

* owner = Reference(Ejemplo-Paciente) "María Díaz"

* output.type = SDOHCCCodeSystemTemporaryCodesCL#general-information-response "Respuesta de información general"
* output.valueMarkdown = "Safeway, por favor"