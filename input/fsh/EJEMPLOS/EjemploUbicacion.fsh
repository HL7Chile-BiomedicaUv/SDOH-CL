Instance: Ejemplo-Ubicacion
InstanceOf: SDOHCCLocationCL
Usage: #example
Title: "Ejemplo SDOHCC-Ubicación"
Description: "Ejemplo de una ubicación para un servicio de salud en la que el pacinete podría agendar una cita. Este ejemplo se utiliza como la ubicación de referencia en otros ejemplos de esta IG."

* name = "Centro de Salud Familiar Viña del Mar"
* address.line = "Av. Libertad, 1234, Viña del Mar"
* address.city = "Viña del Mar"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district = "Valparaíso"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state = "Valparaíso"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country = "Chile"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"