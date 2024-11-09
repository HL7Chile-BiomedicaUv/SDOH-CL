Instance: Ejemplo-CitaTelecomunicacionesServicioSalud
InstanceOf: SDOHCCHealthcareServiceCL
Usage: #example
Title: "Ejemplo SDOHCC-Cita telefónica de Servicio de Salud"
Description: "Un ejemplo de un Servicio de Salud con telecomuniciones que puede ser utilizado para agendar una cita.Este ejemplo se utiliza como el servicio de salud de referencia en otros ejemplos de IG."

* active = true
* location = Reference(Ejemplo-Ubicacion)
* name = "Centro de Salud Familiar Viña del Mar"

* telecom[0].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "(345990) agendar"
* telecom[=].use = #work
* telecom[+].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #email
* telecom[=].value = "SludFamilarvina@example.com"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(345990) oficina"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(345990) enfermera"
* telecom[=].use = #work