Instance: Ejemplo-TareaparaProgramarCitaconPaciente
InstanceOf: SDOHCCTaskForPatientCL
Usage: #example
Title: "Ejemplo SDOHCC-Tarea para programar una cita con el paciente"
Description: "Ejemplo de una tarea para paciente completada donde la tarea era hacer una cita."

* status = #completed
* intent = #order
* priority = #routine
* code = SDOHCCCodeSystemTemporaryCodesCL#make-contact "Hacer contacto" 
* description = "Por favor, contacte con la clínica para agendar su cita."
* for = Reference(Ejemplo-Paciente) "María Díaz"
* authoredOn = "2020-09-12T21:56:54.671Z"
* requester = Reference(Ejemplo-Organizacionprestadora) "Centro de Salud Familiar Arauco"
* owner = Reference(Ejemplo-Paciente) "María Díaz"
* input.type = SDOHCCCodeSystemTemporaryCodesCL#contact-entity "Entidad de contacto"
* input.valueReference = Reference(Ejemplo-CitadeAtencion)