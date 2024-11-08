Instance: Ejemplo-PlataformaCoordinacion
InstanceOf: OrganizacionCL
Usage: #definition
Title: "Ejemplo Plataforma de coordinación"
Description: "Ejemplo de una plataforma de coordinación.Este ejemplo se utiliza como referencia en otros ejemplos de esta IG."

* active = true
* name = "Plataforma de Coordinación ABC"

* address.line = "Avenida Providencia 1234"
* address.city = "Providencia"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#13123 "Providencia"
* address.district = "Santiago"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#131 "Santiago"
* address.state = "Metropolitana de Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#13 "Metropolitana de Santiago"
* address.country = "Chile"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"
