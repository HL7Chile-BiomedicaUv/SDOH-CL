Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCLocationCL
Parent: LocalizacionCL 
Id: SDOHCC-LocationCL
Title: "Ubicación de SDOH."
Description: "Perfil que describe la información de la dirección para un servicio de salud."

* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* name 1..1 MS
* address 1..1 MS


Mapping: servd
Id: servd
Title: "ServD"
Source: SDOHCCLocationCL
Target: "http://www.omg.org/spec/ServD/1.0/"


