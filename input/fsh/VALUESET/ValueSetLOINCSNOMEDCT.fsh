ValueSet: SDOHCCValueSetLOINCSNOMEDCTCL
Id: SDOHCC-ValueSetLOINCSNOMEDCT-CL
Title: "ValueSet SDOHCC LOINC-SNOMEDCT"
Description: "Este value set contiene todo LOINC y SNOMED CT."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/gravitycl/ImplementationGuide/hl7.fhir.cl.gravitycl"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/patientcare"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "patientcare@lists.hl7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc. This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system LOINC
* include codes from system SNOMED_CT_INT
