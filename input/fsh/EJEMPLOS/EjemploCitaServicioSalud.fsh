Instance: Ejemplo-CitaTelecomunicacionServicioSalud
InstanceOf: SDOHCCHealthcareServiceCL
Usage: #example
Title: "Ejemplo SDOHCC-Cita de telecomunicación del servicio de salud"
Description: "Ejemplo de servicio de salud con telecomunicación que se puede utilizar para agendar una cita. Este ejemplo se utiliza como el servicio de salud de referencia en otros ejemplos de esta IG."

* active = true
* location = Reference(Ejemplo-Ubicacion)
* name = "Centro de Salud Familiar Viña del Mar"

* telecom[0].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "(555) appoint"
* telecom[=].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #email
* telecom[=].value = "centrofamiliarVM@example.com"