Instance: EjemploSDOHCC-ClinicaOrganizacion
InstanceOf: OrganizacionCL
Usage: #example
Title: "Ejemplo SDOHCC-Clínica de organización"
Description: "Ejemplo de organización de una clínica.Este ejemplo se utiliza como organización de referencia en otros ejemplos de la IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl"
* active = true
* name = "Hospital Dr. Gustavo Fricke"
* address.text = "Calle Álvarez 1532, Viña del Mar, Valparaíso 2520276"
* address.line = "Calle Álvarez 1532"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-ComunasCl.html"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-ProvinciasCl.html"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-RegionesCl.html"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"