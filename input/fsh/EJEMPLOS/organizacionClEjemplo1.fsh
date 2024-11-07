Alias: $CSCodComunasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $CSCodProvinciasCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $CSCodRegionCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $CodPais = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais

Instance: OrganizacionClEjemplo1.1
InstanceOf: OrganizacionCL
Usage: #example
Title: "Ejemplo Organización"
Description: "Ejemplo de una organización. Este ejemplo se utiliza como organización de referencia en otros ejemplos de esta IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl"
* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc"
* identifier.value = "107100"
* active = true
* name = "Hospital Dr. Gustavo Fricke"
* alias = "Hospital Dr. Gustavo Fricke"
* address.line = "Calle Álvarez 1532"
* address.city = "Viña del Mar"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district = "Santiago"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state = "Metropolitana de Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country = "Chile"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"