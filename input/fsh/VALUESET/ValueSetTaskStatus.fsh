ValueSet: SDOHCCValueSetTaskStatusCL
Id: SDOHCC-ValueSetTaskStatus-CL
Title: "ValueSet SDOHCC para Estado de la Tarea"
Description: "Códigos para el estado de una tarea para un paciente."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"

* ^experimental = false
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* TaskStatus#ready "Listo"
* TaskStatus#in-progress "En curso"
* TaskStatus#completed "Completado"
* TaskStatus#cancelled "Cancelado"
* TaskStatus#on-hold "En espera"
* TaskStatus#failed "Fallido"
* TaskStatus#entered-in-error "Ingresado por error"