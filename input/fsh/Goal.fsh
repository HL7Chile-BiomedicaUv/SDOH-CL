Profile: SDOHCCGoalCL
Parent: Goal
Id: SDOHCC-GoalCL
Title: "Metas/Objetivos SDOHCC "
Description: "Perfil para metas/objetivos que abordan los Determinantes Sociales de la Salud (SDOH)."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* . ^short = "Describe el(los) objetivo(s) relacionado(s) con los SDOH para un paciente."
* . ^definition = "Para la representación de las metas/objetivos relacionados con los SDOH."
* . ^comment = "Muchos de los perfiles SDOHCC se referencian entre sí.Un flujo respaldado por esta IG es que las Respuestas a cuestionarios resultan de Observaciones que pueden usarse como evidencia para Condiciones que pueden conducir a Metas/Objetivos, Solicitudes de servicio y Procedimientos.Sin embargo, también son posibles caminos alternativos. "
* achievementStatus MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains SDOH 0..* MS
* category[SDOH] from SDOHCCValueSetSDOHCategoryCL (required)
* category[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte"
* category[SDOH] ^definition = "Una categoría de SDOH asignada a la meta/objetivo."
* category[SDOH] ^requirements = "Los códigos de este value set se pueden usar para asignar una o más categorías de SDOH (por ejemplo, inseguridad alimentaria, inseguridad en el transporte,etc.) a una meta/objetivo.Se recomienda utilizar códigos de categoría de SDOH para facilitar la búsqueda de metas/objetivos relacionados con SDOH."
* category[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."
* description from SDOHCCValueSetLOINCSNOMEDCTCL (preferred)
* description ^comment = "Si no hay código disponible,utiliza CodeableConcept.text.\r\n\r"
* description ^binding.description = "Códigos que proporcionan los detalles de un objetivo particular.En muchos sistemas, solo se utilizará el elemento de texto."
* subject ^definition = "Identifica al paciente para el cual se está estableciendo la meta/objetivo."
* target.measure from LOINCCodes (preferred)
* target.measure ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* target.measure ^binding.extension[=].valueString = "GoalTargetMeasure"
* target.measure ^binding.description = "Códigos para identificar el valor que se está rastreando,por ejemplo, peso corporal,presión arterial o nivel de hemoglobina A1c."
* statusDate ^comment = "Para ver la fecha de estados anteriores,consulta el historial.\r\n\r\nEl recurso Goal no especifica claramente si Goal.statusDate se aplica a Goal.achievementStatus o a Goal.lifecycleStatus.Para un uso consistente en el contexto de SDOH,se recomienda que Goal.statusDate se sincronice con Goal.achievementStatus."
* addresses only Reference(DiagnosticoCl or ObservacionCL or RiskAssessment)
* addresses ^slicing.discriminator.type = #profile
* addresses ^slicing.discriminator.path = "resolve()"
* addresses ^slicing.rules = #open
* addresses contains SupportedAddresses 0..* MS
* addresses[SupportedAddresses] only Reference(SDOHCCConditionCL or SDOHCCObservationScreeninigResponseCL or SDOHCCObservacionAssessmentCL)
* addresses[SupportedAddresses] ^requirements = "Cuando una meta/objetivo aborda las observaciones de respuesta a la evaluación de SDOH generadas a partir de encuestas/cuestionarios,observaciones de evaluación de SDOH o condiciones de SDOH, Goal.addresses debe hacer una referencia a instancias que cumplan con los perfiles de Respuesta de Detección de Observación de SDOHCC, Condición SDOHCC, o Evaluación de Observación de SDOHCC.Sin embargo,también son posibles referencias a otros tipos de instancias."
* outcomeCode from SDOHCCValueSetLOINCSNOMEDCTCL (preferred)
* outcomeCode ^comment = "Ten en cuenta que esto no debe duplicar el estado de la meta/objetivo.\r\n\r\nLa información representada por Goal.outcomeCode puede superponerse significativamente con la información representada por Goal.outcomeReference.Múltiples enfoques para representar la misma información puede afectar negativamente la interoperabilidad.Por lo tanto, donde haya una superposición significativa en la información proporcionada por Goal.outcomeCode y Goal.outcomeReference, se recomienda utilizar Goal.outcomeReference para proporcionar detalles sobre los resultados del objetivo."
* outcomeCode ^binding.description = "El resultado de la meta/objetivo; por ejemplo, \"Seguridad alimentaria\", \"Tiene acceso a un automóvil\"."
* outcomeReference ^slicing.discriminator.type = #profile
* outcomeReference ^slicing.discriminator.path = "resolve()"
* outcomeReference ^slicing.rules = #open
* outcomeReference ^comment = "El resultado de la meta/objetivo es independiente del resultado de las actividades relacionadas.Por ejemplo, si la meta/objetivo es alcanzar un peso corporal objetivo de 68 kg y se define una actividad en el plan de atención para hacer dieta, entonces el resultado de la actividad del plan de acción podría ser las calorías consumidas,mientras que el resultado del objetivo es una observación del peso corporal real medido.\r\n\r\nAdemás, consulta los comentarios de Goal.outcomeCode. "
* outcomeReference contains SupportedOutcomeReference 0..* MS
* outcomeReference[SupportedOutcomeReference] only Reference(SDOHCCObservationScreeninigResponseCL or SDOHCCObservacionAssessmentCL)
* outcomeReference[SupportedOutcomeReference] ^requirements = "Cuando un resultado de la meta/objetivo puede ser representado por observaciones de respuesta a evaluación de SDOH o observaciones de evaluación de SDOH, Goal.outcome debe hacer referencia a instancias que cumplan con los perfiles de Respuesta de Detección de Observación de SDOHCC o Evaluación de Observación de SDOHCC.Sin embargo, también son posibles referencias a otros tipos de instancias."


