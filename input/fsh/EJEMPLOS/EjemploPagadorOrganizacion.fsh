Instance: SDOHCC-PagadordelaOrganizacion
InstanceOf: OrganizacionCL
Usage: #example
Title: "Ejemplo SDOHCC-Pagador de la organización"
Description: "Ejemplo de una organización pagadora. Este ejemplo se utiliza como organización de referencia en otros ejemplos de SDOHCC."

* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl"
* active = true
* name = "Pagador FONASA"
* address.text = "Calle Arlegui 215, Viña del Mar, Valparaíso"
* address.line = "Calle Arlegui 215"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosProvinciasCL"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosRegionesCL"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"

