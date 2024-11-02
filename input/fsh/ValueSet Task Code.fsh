Alias: $temp = http://hl7.org/fhir/uv/sdc/CodeSystem/temp

ValueSet: SDOHCCValueSetTaskCodeCL
Id: SDOHCC-ValueSetTaskCode-CL
Title: "ValueSet SDOHCC para el Código de Tarea"
Description: "Códigos para la acción general que implica una tarea."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://example.org/ImplementationGuide/GravityCL" //CAMBIAR
* ^experimental = false
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* SDOHCCCodeSystemTemporaryCodesCL#make-contact "Hacer contacto"
* SDOHCCCodeSystemTemporaryCodesCL#review-material "Revisar material"
* SDOHCCCodeSystemTemporaryCodesCL#general-information "Información general"
* $temp#complete-questionnaire "Cuestionario completo"