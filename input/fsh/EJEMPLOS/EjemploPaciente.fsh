Alias: $CSIdentidaddeGenero = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $CodPais = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais
Alias: $CSCodigoDNI = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI
Alias: $CSCodComunasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $CSCodProvinciasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $CSCodRegionCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $CSCodigoslenguaje = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoslenguaje


Instance: Ejemplo-Paciente
InstanceOf: PacienteCl
Usage: #definition 
Title: "Ejemplo Paciente"
Description: "Ejemplo de un paciente.Este ejemplo se utiliza como paciente de referencia en otros ejemplos de esta IG."

* extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero"
* extension[=].valueCodeableConcept = $CSIdentidaddeGenero#2 "Femenina"
* extension[+].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* extension[=].valueCodeableConcept = $administrative-gender#female "Female"

* identifier.use = #official
* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept = $CodPais#152 "Chile"
* identifier.type = $CSCodigoDNI#NNCHL "Chile"
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15.236.327-k"
* active = true

* name[0].use = #official
* name[=].family = "Díaz"
* name[=].family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name[=].family.extension.valueString = "Bosh"
* name[=].given[0] = "María"
* name[=].given[+] = "Fernanda"
* name[+].use = #usual
* name[=].given = "Mari"

* telecom[0].system = #phone
* telecom[=].value = "943561833"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "mariDiaz@mimail.com"
* telecom[=].use = #work

* gender = #female

* birthDate = "1997-03-24"

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

* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[=].valueIdentifier.type = $CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[=].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[=].valueIdentifier.value = "8987321-7"
* contact.extension.extension[+].url = "docProc"
* contact.extension.extension[=].valueCodeableConcept = $CodPais#152 "Chile"

* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
* contact.relationship = $v2-0131#N "Next-of-Kin"

* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* contact.name.family.extension.valueString = "Morales"
* contact.name.given[0] = "Juana"
* contact.name.given[+] = "Josefa"
* communication.language = $CSCodigoslenguaje#es-CL "Spanish"

