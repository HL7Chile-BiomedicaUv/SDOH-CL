Instance: SDOHCC-EjemplocitaTelecomunicacionesServicioAtencionMedica
InstanceOf: HealthcareService
Usage: #example
Title: "Ejemplo SDOHCC-Cita de telecomunicaciones de servicio de atención médica"
Description: "Ejemplo de un servicio de atención médica con telecomunicación que se utiliza para marcar una cita. Este ejemplo se utiliza como referencia en otros ejemplos de la IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-HealthcareServiceCL"
* active = true
* location = Reference(Location/SDOHCC-EjemploUbicacion)
* name = "Centro Médico y Dental RedSalud"
* telecom[0].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "600 718 6000 agendar"
* telecom[+].extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[=].extension.valueBoolean = true
* telecom[=].system = #email
* telecom[=].value = "redsaludg@example.com"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "600 718 6000 oficina"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "600 718 6000 enfermera"
* telecom[=].use = #work
