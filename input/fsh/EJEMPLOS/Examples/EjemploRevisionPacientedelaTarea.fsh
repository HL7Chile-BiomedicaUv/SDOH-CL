Instance: Ejemplo-InformacionRevisionTarea
InstanceOf: SDOHCCTaskForPatientCL
Usage: #example
Title: "Ejemplo SDOHCC-Información de revisión del paciente en la tarea"
Description: "Ejemplo de una tarea completada para el paciente,donde la tarea consistió en revisar material."

* status = #completed
* intent = #order
* priority = #routine

* code = SDOHCCCodeSystemTemporaryCodesCL#review-material "Revisar material"

* description = "Por favor, revise la siguiente información sobre la hipertensión arterial."

* focus = Reference(Ejemplo-DocumentoReferencia)

* for = Reference(Ejemplo-Paciente) "María Díaz"

* authoredOn = "2020-09-12T21:56:54.671Z"

* requester = Reference(Ejemplo-Organizacionprestadora)

* owner = Reference(Ejemplo-Paciente) "María Díaz"