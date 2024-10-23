Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCConsentCL
Parent: Consent
Id: SDOHCC-ConsentCL
Title: "Consentimiento SDOHCC"
Description: "Perfil para el consentimiento relacionado con la divulgación de información sobre Determinantes Sociales de la Salud (SDOH) a organizaciones no sujetas a la Ley de Protección de la Vida Privada (Ley N°19.628) o normativas específicas de salud."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* . ^definition = "Un registro de las decisiones de un consumidor de atención médica relacionadas con la divulgación de información sobre Determinantes Sociales de la Salud (SDOH) a organizaciones no sujetas a la Ley de Protección de la Vida Privada (Ley N°19.628) o normativas específicas de salud."
//* . ^comment = "Providers should consider including standard language to inform the patient that disclosure of their information to entities which are not HIPAA covered entities are no longer protected under the HIPAA Privacy Rule but may be protected by FTC Consumer Protection rules."
* status MS
* status ^comment = "Este elemento se etiqueta como un modificador porque el estado contiene los códigos \"rechazado\" e \"ingresado por error\" que marcan el consentimiento como no válido en la actualidad. \r\n\r\nEn general, cuando se intercambia con una organización comunitaria, el Consent.status debe referirse al valor \"activo\". "
* scope MS
* scope ^comment = "El uso principal de este elemento en el contexto de esta guía de implementación será \"privacidad del paciente\" (Consentimiento de Privacidad)."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains IDSCL 1..1 MS
* category[IDSCL] = $v3-ActCode#IDSCL
* category[IDSCL] ^requirements = "El recurso base requiere una categoría.Para el consentimiento relacionado con los SDOH,ISCDL fue la mejor opción de las opciones requeridas."
* patient 1.. MS
* patient only Reference($CorePacienteCl)
* dateTime 1.. MS
* dateTime ^requirements = "Esto es Must Support para permitir que un receptor determine el  \"orden \" de múltiples consentimientos. "
* performer only Reference(Organization or RelatedPerson or Practitioner or PractitionerRole or Patient)
* performer ^requirements = "This element is not mandatory . There is not a use case that Performer be computable since it will normally be present in the consent \"form\"."
* organization 1..1 MS
* organization only Reference($CoreOrganizacionCl)
* source[x] 1.. MS
* source[x] only Attachment or Reference(Consent or Contract or DocumentReference or QuestionnaireResponse)