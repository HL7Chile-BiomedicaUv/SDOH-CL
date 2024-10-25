Extension: SDOHCCExtensionConditionAsserterCL
Id: SDOHCC-ExtensionConditionAsserterCL
Title: "Confirmador de condiciones de extensión SDOHCC"
Description: "Extensión para permitir que el afirmador de una condición sea un Dispositivo (que se utilizó para realizar una operación que llevó a la condición)."
Context: SDOHCCConditionCL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/us/sdoh-clinicalcare/ImplementationGuide/hl7.fhir.us.sdoh-clinicalcare" // PREGUNTAR SI SE DEBE MODIFICAR LA CANONICA
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* value[x] only Reference


Extension: SDOHCCExtensionHealthcareServiceTelecomAppointmentCL
Id: SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL
Title: "Extensión SDOHCC HealthcareService Telecom Appointment"
Description: "Extensión para amrcar un HealthcareService.telecom como uno que el paciente puede utilizar para hacer una cita."
Context: HealthcareService.telecom
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/us/sdoh-clinicalcare/ImplementationGuide/hl7.fhir.us.sdoh-clinicalcare"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ..1
* . ^short = "Las teelcomunicaciones son para concretar citas."
* . ^definition = "Para marcar un HealthcareService.telecom como aquel que el paciente puede utilizar para hacer una cita."
* value[x] 1..
* value[x] only boolean
* value[x] = true (exactly)