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
* ^extension[=].valueCode.extension.valueCanonical = "http://example.org/ImplementationGuide/GravityCL"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* value[x] only Reference


