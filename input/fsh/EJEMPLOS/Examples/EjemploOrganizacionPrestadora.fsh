Alias: $CSCodComunasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $CSCodProvinciasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $CSCodRegionCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $CodPais = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais

Instance: Ejemplo-Organizacionprestadora
InstanceOf: OrganizacionCL
Usage: #definition
Title: "Ejemplo SDOHCC-Organización prestadora de salud"
Description: "Ejemplo de una organización prestadora de salud.Este ejemplo se utiliza como organización de referencia en otros ejemplos de esta IG."

* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc"
* identifier.value = "111372"
* active = true

* name = "Centro de Salud Familiar Arauco"
* alias = "Cesfam Arauco"

* address.line = "Sepúlveda Leyton 3288"
* address.city = "Santiago Centro"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#13101 "Santiago Centro"
* address.district = "Santiago"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#131 "Santiago"
* address.state = "Metropolitana de Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#13 "Metropolitana de Santiago"
* address.country = "Chile"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"

