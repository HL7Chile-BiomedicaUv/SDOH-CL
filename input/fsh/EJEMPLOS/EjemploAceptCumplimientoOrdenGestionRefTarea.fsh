Alias: $task-code = http://hl7.org/fhir/CodeSystem/task-code

Instance: Ejemplo-CumplimientoAcepOrdenGestionRefTarea
InstanceOf: SDOHCCTaskForReferralManagementCL
Usage: #example
Title: "Ejemplo SDOHCC-Cumplimiento aceptado de orden de gestión de referencias de tarea"
Description: "Ejemplo de una tarea aceptada para la gestión de referencias que tiene como Task.focus una solicitud de servicio para asistencia con la postulación a un banco de alimentos."

* status = #accepted
* intent = #order
* code = $task-code#fulfill "Fulfill the focal request"
* code.text = "Cumplir con la solicitud focal"
* focus = Reference(Ejemplo-SolServAplicacionBancoAlim)
* for = Reference(Ejemplo-Paciente) "Martina Díaz"
* authoredOn = "2020-09-11T21:56:54.671Z"
* requester = Reference(Ejemplo-RolPrestador) "Dra Johanna Silva Medicina Familiar"
* owner = Reference(Ejemplo-PlataformaCoordinacion) "Plataforma de Coordinación ABC"