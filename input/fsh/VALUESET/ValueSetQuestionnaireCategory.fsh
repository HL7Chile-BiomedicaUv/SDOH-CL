ValueSet: SDOHCCValueSetSDOHQuestionnaireCategoryCL
Id: SDOHCC-ValueSetSDOHQuestionnaireCategory-CL
Title: "ValueSet SDOHCC para Categoría Cuestionario SDOH"
Description: "Códigos que representan categorías de cuestionarios sobre Determinantes Sociales de la Salud (SDOH)."
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
* SDOHCCCodeSystemTemporaryCodesCL#risk-questionnaire "Cuestionario de riesgo"
* SDOHCCCodeSystemTemporaryCodesCL#feedback-questionnaire "Cuestionario de retroalimentación"
* SDOHCCCodeSystemTemporaryCodesCL#application-questionnaire "Cuestionario de solicitud"
* SDOHCCCodeSystemTemporaryCodesCL#personal-characteristics-questionnaire "Cuestionario de características personales"
* SDOHCCCodeSystemTemporaryCodesCL#other-specify "Otra especificacón"