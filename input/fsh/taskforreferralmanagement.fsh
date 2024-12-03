Alias: $task-code = http://hl7.org/fhir/CodeSystem/task-code
Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCTaskForReferralManagementCL
Parent: Task
Id: SDOHCC-TaskForReferralManagementCL
Title: "Tarea de SDOHCC para la gestión de derivaciones"
Description: "Perfil para tareas que solicitan el cumplimiento de un ServiceRequest SDOHCC (es decir,una referencia para servicio) y posteriormente rastrean y gestionan el cumplimiento de esa referencia."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* . ^short = "Una solicitud para cumplir con un pedido de servicio SDOH."
* . ^comment = "Para tareas utilizadas en solicitar el cumplimiento de un ServiceRequest SDOHCC (es decir,una referencia para servicio) y posteriormente rastrear y gestionar el cumplimiento de esa referencia."
* partOf ^slicing.discriminator[0].type = #profile
* partOf ^slicing.discriminator[=].path = "resolve()"
* partOf ^slicing.rules = #open
* partOf contains SupportedPartOf 0..* MS
* partOf[SupportedPartOf] only Reference(SDOHCCTaskForReferralManagementCL)
* partOf[SupportedPartOf] ^requirements = "Permite a una organización (por ejemplo, una plataforma de coordinación) crear una tarea,basada en una tarea SDOHCC de una fuente de referencia,para pasarla a otra organización (por ejemplo,una organización comunitaria)."
* status MS
* status from SDOHCCValueSetReferralTaskStatusCL (required)
* status ^comment = "Tenga en cuenta que las cadenas FHIR NO DEBEN exceder 1 MB de tamaño.Para más detalles sobre Task.status,consulte [Checking Task Status](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/checking_task_status.html)."
* statusReason MS
* statusReason ^comment = "Esto se aplica el estado actual.Consulte el historial de la tarea para ver las razones de los estados anteriores.Si el Task.status es rechazado,cancelado,en espera o fallido,entonces se debe incluir Task.statusReason.text."
* statusReason.text 1.. MS
* intent = #order (exactly)
* intent ^short = "order"
* intent ^definition = "Indica el \"nivel\" de capacidad de acción asociado con la tarea."
* intent ^comment = "Una solicitud para cumplir con la tarea es siempre una orden."
* priority MS
* priority ^comment = "Task.priority debe utilizarse para distinguir las tareas urgentes (por ejemplo,necesita refugio de inmediato) de las tareas rutinarias."
* code 1..
* code = $task-code#fulfill
* focus 1.. MS
* focus only Reference(SDOHCCServiceRequestCL)
* for 1.. MS
* for only Reference(RelatedPerson or Group or $CorePacienteCl )
* authoredOn 1.. MS
* requester 1.. MS
* requester only Reference($CoreRolClinicoCl or $CoreOrganizacionCl)
* owner MS
* owner ^requirements = "Este elemento es Must Support.Sin embargo,no es obligatorio para permitir que se cree una tarea sin un propietario,de modo que uno de un grupo potencial de ejecutores pueda optar por \"poseer\" la tarea (por ejemplo,se establece una solicitud de cumplimiento \"abierta\" y cualquier persona capaz de completar el pedido puede reclamarla)."
* output ^slicing.discriminator[0].type = #pattern
* output ^slicing.discriminator[=].path = "type"
* output ^slicing.discriminator[+].type = #type
* output ^slicing.discriminator[=].path = "value"
* output ^slicing.rules = #open
* output contains
    PerformedActivityReference 0..* MS and
    PerformedActivityCode 0..* MS
* output[PerformedActivityReference].type = SDOHCCCodeSystemTemporaryCodesCL#resulting-activity
* output[PerformedActivityReference].valueReference 1..1 MS
* output[PerformedActivityReference].valueReference only Reference(SDOHCCProcedureCL)
* output[PerformedActivityReference].valueReference ^sliceName = "valueReference"
* output[PerformedActivityCode].type = SDOHCCCodeSystemTemporaryCodesCL#resulting-activity
* output[PerformedActivityCode].valueCodeableConcept 1..1 MS
* output[PerformedActivityCode].valueCodeableConcept only CodeableConcept
* output[PerformedActivityCode].valueCodeableConcept from CLCoreProcedureCodes (required)
* output[PerformedActivityCode].valueCodeableConcept ^sliceName = "valueCodeableConcept"
