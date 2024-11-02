ValueSet: SDOHCCValueSetObservationStatusCL
Id: SDOHCC-ValueSetObservationStatus-CL
Title: "Valueset SDOHCC Estado de observación"
Description: "Códigos para el estado de una observación de respuesta a una detección. "
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://example.org/ImplementationGuide/GravityCL" //CAMBIAR
* ^status = #active
* ^experimental = true
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ObservationStatus#final "Final"
* ObservationStatus#corrected "Corregido"
* ObservationStatus#entered-in-error "Ingresado por error"
* ObservationStatus#unknown "Desconocido"