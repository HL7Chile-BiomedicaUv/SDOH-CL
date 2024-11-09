Instance: Ejemplo-CitaServicioSalud
InstanceOf: SDOHCCHealthcareServiceCL
Usage: #example
Title: "Ejemplo SDOHCC-Cita por medio de telecomunicación del servicio de slaud."
Description: "Ejemplo de un servicio de salud con telecomunicacion que se puede utilizar para agendar una cita.Este ejemplo se utiliza como el servicio de salud de referencia en otros ejemplos de esta IG."

* active = true
* location = Reference(Ejemplo-Ubicacion)
* name = "Centro de Salud Familiar Viña del Mar"
* telecom[0].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "(555) appoint"
* telecom[=].use = #work
* telecom[+].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #email
* telecom[=].value = "familyCounseling@example.com"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(555) office"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(555) nursepr"
* telecom[=].use = #work