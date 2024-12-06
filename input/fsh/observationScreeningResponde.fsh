Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreLocalizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreLocalizacionCl
Alias: $EncounterCL = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL
Alias: $CorePrestadorCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $CoreObservacionCL = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL
Alias: $sdc-questionnaireresponse = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse

Profile: SDOHCCObservationScreeninigResponseCL
Parent: $CoreObservacionCL
Id: SDOHCC-ObservationScreeningResponseCL
Title: "Respuesta de Detección de Observación de SDOHCC"
Description: "Perfil para observaciones que representan pares de preguntas y respuestas de los instrumentos de evaluación de Determinantes Sociales de la Salud (SDOH)."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/us/sdoh-clinicalcare/ImplementationGuide/hl7.fhir.us.sdoh-clinicalcare"

* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Observaciones del cuestionario de evaluación de SDOH."
* . ^definition = "Para observaciones derivadas de encuestas (cuestionarios de detección de SDOH.)"
* . ^comment = "Se utiliza para observaciones simples, como el estado educativo, observaciones sobre la inseguridad alimentaria, etc.\r\nEste perfil permite la representación de observaciones de los Determinantes Sociales de la Salud (SDOH) basadas en las respuestas a cuestionarios de detección de SDOH (que también pueden ser representadas utilizando SDC QuestionnaireResponse).\r\n\r\nMuchos de los perfiles de SDOHCC hacen referencia entre sí. Un flujo soportado por esta IG es que las respuestas a los cuestionarios resultan en observaciones que pueden ser usadas como evidencia para condiciones que pueden llevar a metas, solicitudes de servicios y procedimientos. Sin embargo, también son posibles caminos alternativos."

* status MS
* status from SDOHCCValueSetObservationStatusCL (required)
* status ^short = "Final | Corregido | Ingresado por error | Desconocido" 
* status ^definition = "Estado de la observación"
* status ^requirements = "Limitado adicionalmente a valores que son relevantes para los SDOH."

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^requirements = "Para identificar que una respuesta de detección de una observación SDOH se deriva de una cuestionario SDOH, se requieren los códigos \"social-history\" y \"survey\"."
* category contains
    SocialHistory 1..1 MS and
    Survey 1..1 MS and
    SDOH 0..* MS
* category[SocialHistory] = $observation-category#social-history
* category[SocialHistory] ^requirements = "Se utiliza para filtrar observaciones de la historia social."
* category[Survey] = $observation-category#survey
* category[Survey] ^requirements = "Se utiliza para filtrar observaciones derivadas de una encuesta/cuestionario."
* category[SDOH] from SDOHCCValueSetSDOHCategoryCL (required)
* category[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte."
* category[SDOH] ^definition = "Una categoría de SDOH asignada a la observación."
* category[SDOH] ^requirements = "Los códigos de este value set pueden usarse para asignar una o más categorías de SDOH (por ejemplo,inseguridad alimentaria, inseguridad en el transporte,etc.) a una observación.Se recomienda que se utilicen los códigos de categorías de SDOH para facilitar la búsqueda de observaciones de SDOH."
* category[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."

* code MS
* code from LOINCCodes (required)
* code ^requirements = "Conocer qué tipo de observación se está realizando es esencial para entender la observación.\r\n\r\nLa guía de implementación restringe las observaciones de cuestionarios/encuestas a LOINC para mover a la industria hacia el uso de paneles/encuestas LOINC (estructura que no están disponibles en otros sistemas de terminología) con el fin de estandarizar la codificación de los instrumentos de evaluación de riesgos relacionados con los SDOH."
* code ^binding.description = "Códigos que identifican nombres de observaciones simples."

* subject 1.. MS
* subject only Reference($CorePacienteCl)
* subject ^comment = "La cardinalidad es 1..1"

* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x] ^definition = "El tiempo o período de tiempo en el que se afirma que el valor observado es verdadero.Para sujetos biológicos, por ejemplo, pacientes humanos, esto se llama generalmente el \"tiempo fisiológicamente relevante\"."
* effective[x] ^comment = "Al menos una fecha debe estar presente a menos que esta observación sea un informe histórico."

* performer only Reference(RelatedPerson or $CorePacienteCl or $CorePrestadorCl or $CoreRolClinicoCl or $CoreOrganizacionCl or CareTeam)
* performer MS
* performer ^requirements = "Algunas preguntas en un cuestionario de detección de SDOH no son respondidas directamente (por ejemplo, afirmadas) por la persona que completa el cuestionario.En cambio,la respuesta a algunas preguntas (por ejemplo,el signo vital de hambre 88124-3 \"riesgo de inseguridad alimentaria\") puede derivarse de las respuestas a una o más otras preguntas.Para una respuesta de detección de observación que es derivada, en lugar de respondida directamente, no se debe especificar el Observation.performer."

* value[x] MS
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* value[x] ^comment = "Una observación existe para tener un valor, aunque podría no tenerlo si está en error, si representa un grupo de observaciones, o si una razón para su omisión está capturada por Observation.dataAbsentReason."
* value[x] ^requirements = "Una observación existe para tener un valor,aunque podría no tenerlo si está en error, si representa un grupo de observaciones, o si una razón para su omisión está capturada por Observation.dataAbsentReason."

* valueQuantity 0..1
* valueQuantity only Quantity 
* valueQuantity from UnitsOfMeasureCaseSensitive (required)
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity ^binding.description = "Esté es el conjunto completo de códigos UCUM."  

* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from LOINCCodes (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^comment = "El conjunto de códigos permitidos será determinado por Observation.code.Se utilizaría un CodeableConcept con solo un texto en lugar de una cadena si el campo normalmente se codifica, o si el tipo asociado con Observation.code define un valor codificado."
* valueCodeableConcept ^binding.description = "Esté value set incluye todos los códigos LOINC."

* dataAbsentReason MS
* dataAbsentReason ^comment = "Los valores \"nulos\" o excepcionales pueden ser representados de dos maneras en las observaciones FHIR. Una forma es incluirlos simplemente en el conjunto de valores y representar las excepciones en el valor.La otra forma es usar el elemento de valor para observaciones reales y utilizar el elemento explícito dataAbsentReason para registrar valores excepcionales.Para una pregunta LOINC dada, si la lista de respuestas LOINC incluye conceptos como \"desconocido\" o \"no disponible\", deben usarse para Observation.value.Cuando estos conceptos no son parte del conjunto de valores para Observation.value.Cuando estos conceptos no son parte del conjunto de valores para Observation.value, se puede utilizar Observation.dataAbsentReason si es necesario y apropiado."

* bodySite ..0

* specimen ..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "$this.resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Corte basado en la conformidad del perfil del recurso referenciado."
* hasMember ^short = "Referencia las observaciones hijas de una observación de agrupamiento."
* hasMember ^definition = "Referencia las observaciones hijas de una observación de agrupamiento."
* hasMember contains SupportedHasMember 0..* MS
* hasMember[SupportedHasMember] only Reference(SDOHCCObservationScreeninigResponseCL)
* hasMember[SupportedHasMember] ^short = "Para un agrupamiento de observaciones, las observaciones generadas a partir de un instrumento de evaluación."
* hasMember[SupportedHasMember] ^definition = "Este es el conjunto de observaciones hijas que se espera que sean soportadas por las implementaciones de SDOH." 
* hasMember[SupportedHasMember] ^comment = "Se pueden enviar otros tipos de observaciones o recursos, pero los sistemas SDOH no están obligados a prestarles atención."
* hasMember[SupportedHasMember] ^requirements = "Proporciona contexto a las observaciones hijas sobre \"en qué instrumento/panel se recopiló esta información\", lo cual es crítico en situaciones donde las observaciones hijas no tienen relaciones derivedFrom con un QuestionnaireResponse."

* derivedFrom only Reference(DocumentReference or QuestionnaireResponse or ObservacionCL)
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Corte basado en la conformidad del perfil del recurso referenciado."
* derivedFrom ^definition = "El recurso objetivo representa un QuestionnaireResponse u otra observación de la cual se infirió o calculó el valor de esta observación."
* derivedFrom ^comment = "Todas las opciones de referencia que se enumeran en este elemento pueden representar observaciones clínicas y otras mediciones que pueden ser la fuente de un valor derivado."
* derivedFrom contains SupportedDerivedFrom 0..* MS
* derivedFrom[SupportedDerivedFrom] only Reference(SDOHCCObservationScreeninigResponseCL or $sdc-questionnaireresponse) 
* derivedFrom[SupportedDerivedFrom] ^short = "Las reglas de asignación deben incluir al menos un espacio tanto antes como después del signo \"=\"."
* derivedFrom[SupportedDerivedFrom] ^definition = "Los tipos de recursos \"derivedFrom\" que deben ser soportados por las implementaciones que se ajustan a esta IG."
* derivedFrom[SupportedDerivedFrom] ^comment = "Se permiten objetivos de derivación adicionales (según lo admitido por el recurso de observación subyacente), pero no se espera que los implementadores de esta IG les presten atención."
* derivedFrom[SupportedDerivedFrom] ^requirements = "Permite la trazabilidad (y el contexto) para las observaciones derivadas de un QuestionnaireResponse y también establece vínculos para observaciones que fueron calculadas o inferidas basándose en otras observaciones (por ejemplo,para puntajes calculados)."
 





