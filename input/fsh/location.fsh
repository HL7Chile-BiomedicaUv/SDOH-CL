Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCLocationCL
Parent: LocalizacionCL 
Id: SDOHCC-LocationCL
Title: "Ubicación de SDOH."
Description: "Perfil que describe la información de la dirección para un servicio de salud."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* name 1..1 MS
* address 1..1 MS


Mapping: servd
Id: servd
Title: "ServD"
Source: SDOHCCLocationCL
Target: "http://www.omg.org/spec/ServD/1.0/"


