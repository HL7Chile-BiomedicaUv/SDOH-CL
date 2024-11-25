Instance: Ejemplo-CumplimientoOrdenTareasRef
InstanceOf: SDOHCCTaskForReferralManagementCL
Usage: #example
Title: "Ejemplo SDOHCC-Cumplimiento de la orden de gestión de tareas de referencia"
Description: "Ejemplo de una tarea completada para la gestión de referencias que tiene una solicitud de servicio para asistencia en la solicitud a una despensa de alimentos como Task.focus y un procedimiento para asistencia en la solicitud a una despensa de alimentos como el Task.output."

* status = #completed
* intent = #order
* code = $task-code#fulfill "Fulfill the focal request"
* code.text = "Cumplir con la solicitud focal"
* focus = Reference(Ejemplo-SolServAplicacionBancoAlim)
* for = Reference(Ejemplo-Paciente) "María Díaz"
* authoredOn = "2020-09-11T21:56:54.671Z"
* requester = Reference(Ejemplo-RolPrestador) "Dra Johanna Silva Medicina Familiar"
* owner = Reference(Ejemplo-PlataformaCoordinacion) "Plataforma de Coordinación ABC"
* output.type = SDOHCCCodeSystemTemporaryCodesCL#resulting-activity "Actividad resultante"
* output.valueReference = Reference(Ejemplo-ProcedAsistSolicitudProgramBancoAlim)
