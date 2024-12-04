Alias: $CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador
Alias: $CSCodComunasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $CSCodProvinciasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $CSCodRegionCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $CodPais = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais

Instance: Ejemplo-Prestador
InstanceOf: PrestadorCL
Usage: #definition
Title: "Ejemplo SDOHCC-Prestador"
Description: "Ejemplo de un profesional. Este ejemplo se utiliza como profesional de referencia en otros ejemplos de esta IG."

* identifier.use = #official
* identifier.type = $CSTipoIdentificador#01 "RUN"
* identifier.value = "8336277-3"
* active = true

* name.use = #official
* name.family = "Silva"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Reyes"
* name.given[0] = "Johanna"
* name.given[+] = "Rosa"

* telecom[0].system = #phone
* telecom[=].value = "9345666"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "DraSilva@mimail.com"
* telecom[=].use = #work

* address.use = #home
* address.line = "Av Los Chirimoyos, 32, casa 4"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05602 "Algarrobo"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#056 "San Antonio"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"

* gender = #female
* birthDate = "1974-08-12"

* qualification[0].identifier.value = "cert"
* qualification[=].code.text = "Profesional Médico Cirujano"


