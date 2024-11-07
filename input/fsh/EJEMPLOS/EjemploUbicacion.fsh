Instance: SDOHCC-EjemploUbicacion
InstanceOf: LocalizacionCL
Usage: #example
Title: "Ejemplo SDOHCC-Ubicación"
Description: "Ejemplo de una ubicación para un servicio de atención médica en el que el paciente podría querer programar una cita.Este ejemplo se utiliza como ubicación de referencia en otros ejemplos de la IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-LocationCL"
* name = "Centro Médico y Dental RedSalud Viña del Mar"
* address.text = "3 Norte 464, Viña del Mar, Valparaíso"
* address.line = "3 Norte 464"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = $CSCodComunasCL#05109 "Viña del Mar"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = $CSCodProvinciasCL#051 "Valparaíso"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = $CSCodRegionCL#05 "Valparaíso"
* address.country.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension.valueCodeableConcept = $CodPais#152 "Chile"