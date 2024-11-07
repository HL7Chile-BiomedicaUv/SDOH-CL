Instance: SDOHCC-EjemploPlataformaCoordinacionOrganizacional
InstanceOf: OrganizacionCL
Usage: #example
Title: "Ejemplo SDOHCC-Plataforma de coordinación organizacional"
Description: "Un ejemplo de organización clínica.Este ejemplo se utiliza como la organización de referencia en otros ejemplos de la IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl"
* active = true
* name = "Plataforma de coordinación ABC"
* address.text = "Calle Valparaíso 137, Viña del Mar, Valparaíso"
* address.line = "Calle Valparaíso 137,"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosRegionesCL"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"

// defensa de los datos ya que se ubican de forma en lazo cerrado, tomar datos, aplicar medias y tener retroalimentacion a partir de los datos. EL valor es realizar algo que en chile no se esta haciendo