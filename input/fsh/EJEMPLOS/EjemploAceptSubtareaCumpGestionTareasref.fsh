Instance: Ejemplo-AceptacionSubtareaCumpTareasRef
InstanceOf: SDOHCCTaskForReferralManagementCL
Usage: #example
Title: "Ejemplo SDOHCC-Aceptación de una subtarea de cumplimiento de la orden de gestión de tareas de referencia"
Description: "Ejemplo de una tarea aceptada para la gestión de referencias que delega la responsabilidad de cumplir con una referencia de una organización intermediaria a otra organización (por ejemplo, cuando una plataforma de coordinación recibe una tarea de una fuente de referencia y la transmite a una organización basada en la comunidad)."

* partOf = Reference(Ejemplo-CumplimientoAcepOrdenGestionRefTarea)
* status = #accepted
* intent = #order
* code = $task-code#fulfill "Fulfill the focal request"
* code.text = "Cumplir con la solicitud focal"
* focus = Reference(Ejemplo-SubderivSolicitudServProgramaAlimentos)
* for = Reference(Ejemplo-Paciente) "María Díaz"
* authoredOn = "2020-09-12T20:56:53.671Z"
* requester = Reference(Ejemplo-PlataformaCoordinacion) "Plataforma de Coordinación ABC"
* owner = Reference(Ejemplo-Organizacionprestadora) "Centro de Salud Familiar Arauco"