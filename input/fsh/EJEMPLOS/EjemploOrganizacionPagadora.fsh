Instance: Ejemplo-OrganizacionPagadora
InstanceOf: OrganizacionCL
Usage: #definition
Title: "Ejemplo SDOHCC-Organización pagadora"
Description: "Ejemplo de una organización pagadora.Este ejemplo se utiliza como organización de referencia en otros ejemplos SDOHCC."

* active = true
* name = "Fondo Nacional de Salud - FONASA"

* address.line = "Calle Enrique Mac-Iver 541"
* address.city = "Santiago"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#13101	 "Santiago Centro"
* address.district = "Santiago"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#131 "Santiago"
* address.state = "Metropolitana de Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#13 "Metropolitana de Santiago"
* address.country = "Chile"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"