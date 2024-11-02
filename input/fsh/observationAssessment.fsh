Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreLocalizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreLocalizacionCl
Alias: $EncounterCL = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL
Alias: $CorePrestadorCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Profile: SDOHCCObservacionAssessmentCL
Parent: ObservacionCL
Id: SDOHCC-ObservationAssessmentCL
Title: "Evaluación de Observación de SDOHCC"
Description: "Perfil para observaciones de Determinantes Sociales de la Salud (SDOH) que implican evaluación (por ejemplo, por parte de un proveedor, pagador, etc.) en lugar de ser derivadas únicamente de encuestas de detección (como ocurre con la Respuesta de Detección de Observación de SDOHCC)."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* . ^short = "Observación de evaluación de SDOH."
* . ^definition = "Para observaciones de SDOH derivadas de la evaluación del individuo."
* . ^comment = "Para la representación de observaciones de SDOH que impplican evaluación (por ejemplo, por parte de un proveedor o pagador) en contraposición a ser derivadas únicamente de encuestas de detección (como es el caso de la Observación de Respuestas a la detección SDOHCC).\r\n\r\nMuchos de los perfiles de SDOHCC se hacen referencia entre sí.Un flujo respaldado por esta Guía de Implementación es que las respuestas a los cuestionarios resultan en observaciones que pueden utilizarse como evidencia para condiciones que pueden llevar a metas, solicitudes de servicio y procedimientos.Sin embargo, tambien son posibles rutas alternativas."
* status MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
    SocialHistory 1..1 MS and
    SDOH 0..* MS
* category[SocialHistory] = $observation-category#social-history
* category[SocialHistory] ^requirements = "Utilizado para filtrar que se trata de una observación de historia social."
* category[SDOH] from SDOHCCValueSetSDOHCategoryCL (required) 
* category[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte."
* category[SDOH] ^definition = "Una categoría de SDOH asignada a la observación."
* category[SDOH] ^requirements = "Los códigos de este conjunto de valores pueden usarse para asignar una o más categorías de SDOH (por ejemplo, inseguridad alimentaria, inseguridad en el transporte, etc.) a una observación. Se recomienda que se utilicen códigos de categoría de SDOH para facilitar la búsqueda de observaciones de SDOH."
* category[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."
* code MS
* code from SDOHCCValueSetLOINCSNOMEDCTCL (preferred)  
* code ^comment = "*Todos los pares de* code-value y, si están presentes, los pares de component.code-component.value deben tenerse en cuenta para comprender correctamente el significado de la observación.\r\n\r\nA medida que Gravity Project continúa refinnado el contenido para las categorías de SDOH (por ejempli, alimentos, viviendas, transporte, etc.), la fuerza de vinculación de este conjunto de valores puede cambiar y puede ser refinada a códigos (incluyendo LOINC y SNOMED) que corresponden a las categorías de SDOH."
* subject 1.. MS
* subject only Reference(Group or $CorePacienteCl)
* effective[x] ^comment = "Debe estar presente al menos una fecha, a menos que esta observación sea un informe histórico. Para registrar tiempos imprecisos o \"vagos\" (por ejemplo, una medición de glucosa en sangre tomada \"después del desayuno\"), utiliza el tipo de dato [Timing], que permite que la medición esté relacionada con eventos de la vida regular. NOTA: dateTime es MustSupport, pero actualmente las herramientas no lo soportan."
* performer only Reference(RelatedPerson or $CorePacienteCl or $CorePrestadorCl or $CoreRolClinicoCl or $CoreOrganizacionCl or CareTeam)
* performer MS
* performer ^comment = "Las referencias DEBEN ser una referencia a un recurso FHIR real y DEBEN ser resolubles (permitiendo el control de acceso, la indisponibilidad temporal, etc.).La resolución puede ser mediante la recuperación de la URL o, donde sea aplicable, por tipo de recurso, tratando una referencia absoluta como una URL canónica y buscándola en un registro/repositorio local. NOTA: El Profesional del CL Core es MustSupport, pero actualmente las herramientas no lo soportan."
* value[x] MS
