ValueSet: SDOHCCValueSetObservationStatusCL
Id: SDOHCC-ValueSetObservationStatus-CL
Title: "Valueset SDOHCC Estado de observación"
Description: "Códigos para el estado de una observación de respuesta a una detección. "
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/gravitycl/ImplementationGuide/hl7.fhir.cl.gravitycl" 
* ^experimental = false
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

