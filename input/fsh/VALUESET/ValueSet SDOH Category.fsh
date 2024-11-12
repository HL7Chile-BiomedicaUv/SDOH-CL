ValueSet: SDOHCCValueSetSDOHCategoryCL
Id: SDOHCC-ValueSetSDOHCategoryCL
Title: "ValueSet SDOHCC para Categoría SDOH"
Description: "Códigos que representan los dominios/ámbitos de los Determinantes Sociales de la Salud (SDOH)."
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
* SDOHCCCodeSystemTemporaryCodesCL#sdoh-category-unspecified "SDOH Categoría no especificada"
* SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* SDOHCCCodeSystemTemporaryCodesCL#housing-instability "Inestabilidad habitacional"
* SDOHCCCodeSystemTemporaryCodesCL#homelessness "Persona sin hogar"
* SDOHCCCodeSystemTemporaryCodesCL#inadequate-housing "Vivienda inadecuada"
* SDOHCCCodeSystemTemporaryCodesCL#transportation-insecurity "Inseguridad en el transporte"
* SDOHCCCodeSystemTemporaryCodesCL#financial-insecurity "Inseguridad financiera"
* SDOHCCCodeSystemTemporaryCodesCL#material-hardship "Dificultades materiales"
* SDOHCCCodeSystemTemporaryCodesCL#educational-attainment "Logro educativo"
* SDOHCCCodeSystemTemporaryCodesCL#employment-status "Estado laboral"
//* SDOHCCCodeSystemTemporaryCodesCL#veteran-status "Veteran Status"
//* SDOHCCCodeSystemTemporaryCodesCL#stress "Stress"
* SDOHCCCodeSystemTemporaryCodesCL#social-connection "Conexión social"
* SDOHCCCodeSystemTemporaryCodesCL#intimate-partner-violence "Violencia intrafamiliar"
* SDOHCCCodeSystemTemporaryCodesCL#elder-abuse "Abuso a personas mayores"
//* SDOHCCCodeSystemTemporaryCodesCL#personal-health-literacy "Personal Health Literacy"
* SDOHCCCodeSystemTemporaryCodesCL#health-insurance-coverage-status "Estado de cobertura de seguro de salud"
* SDOHCCCodeSystemTemporaryCodesCL#medical-cost-burden "Carga de costos médicos"
* SDOHCCCodeSystemTemporaryCodesCL#digital-literacy "Alfabetización digital"
* SDOHCCCodeSystemTemporaryCodesCL#digital-access "Acceso digital"
* SDOHCCCodeSystemTemporaryCodesCL#utility-insecurity "Inseguridad de servicios públicos"