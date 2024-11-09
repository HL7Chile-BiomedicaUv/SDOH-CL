Instance: Ejemplo-CitaTelcomServicioAtencionMedica
InstanceOf: SDOHCCHealthcareServiceCL
Usage: #example
Title: "Ejemplo SDOHCC-Cita de servicio de salud mediante telecomunicación"
Description: "Ejemplo de un servicio de salud con telecomunicación que puede ser utilizado para agendar una cita. Este ejemplo se utiliza como servicio de salud de referencia en otros ejemplos de esta IG."

* active = true
* location = Reference(Ejemplo-Ubicacion)
* name = "Centro de Salud Familiar Viña del Mar"

* telecom[0].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "(345688) agendar"
* telecom[=].use = #work
* telecom[+].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #email
* telecom[=].value = "SaludFamiliar@example.com"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(345688) oficina"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(345688) enfermerar"
* telecom[=].use = #work
