Profile: SDOHCCProcedureCL
Parent: Procedure
Id: SDOHCC-ProcedureCL
Title: "Procedimiento SDOHCC"
Description: "Perfil para intervenciones que abordan los Determinantes Sociales de la Salud."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* . ^short = "Una acción que aborda una condición, observación o meta/objetivo de los Determinantes Sociales de la Salud (SDOH)."
* . ^definition = "Para procedimientos que abordan condiciones,observaciones o metas/objetivos de los Determinantes Sociales de la Salud (SDOH)."
* . ^comment = "Mucho de los perfiles de SDOHCC se hacen referencia entre sí.Un flujo apoyado por esta IG es que las respuestas a cuestionarios resultan en observaciones que pueden ser utilizadas como evidencia para condiciones que pueden llevar a metas/objetivos,solicitudes de servicio y procedimientos.Sin embargo,también son posibles rutas alternativas."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains SRPertainsToGoal named pertainsToGoal 0..* MS
* extension[pertainsToGoal] ^short = "Pertenece a la meta/objetivo de SDOH."
* extension[pertainsToGoal] ^definition = "Indica que el recurso está relacionado con la medición,logro o progreso hacia la meta/objetivo referenciado.Por ejemplo,un procedimiento para proporcionar vales de alimentos pertenece a la meta/objetivo de lograr seguridad alimentaria."
* extension[pertainsToGoal] ^requirements = "Indica que el procedimeinto está relacionado con la meta/objetivo de SDOHCC referenciada."
* extension[pertainsToGoal].value[x] only Reference(SDOHCCGoalCL)
* extension[pertainsToGoal].value[x] MS
* extension[pertainsToGoal].value[x] ^definition = "El valor de la extensión debe hacer referencia a un recurso de meta/objetivo."
* extension[pertainsToGoal].value[x] ^requirements = "Indica que el procedimiento esta relacionado con la meta/objetivo de SDOHCC referenciada."
* basedOn MS
* basedOn ^slicing.discriminator.type = #profile
* basedOn ^slicing.discriminator.path = "resolve()"
* basedOn ^slicing.rules = #open
* basedOn contains SupportedBasedOn 0..* MS
* basedOn[SupportedBasedOn] only Reference(SDOHCCServiceRequestCL) 
* basedOn[SupportedBasedOn] ^short = "Una solicitud de servicio de SDOH para este procediiento."
* basedOn[SupportedBasedOn] ^definition = "Una referencia a una solicitud de servicio de SDOHCC que contiene detalles de la solicitud para este procedimiento."
* basedOn[SupportedBasedOn] ^requirements = "Cuando un procedimiento se basa en una ServiceRequest, Procedure.basedOn debe hacer referencia a instancias que cumplan con el perfil de solicitud de servcio de SDOHCC.Sin embargo,también son posibles referencias a otros tipos de instancias."
* category ^definition = "Un código que clasifica el procedimiento para fines de búsqueda,ordenación y visualización (por ejemplo, \"Procedimiento de servicio social\")."
* category.coding MS
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains SDOH 0..1 MS
* category.coding[SDOH] from SDOHCCValueSetSDOHCategoryCL (required)
* category.coding[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte."
* category.coding[SDOH] ^definition = "Una categoría de SDOH asignada al procedimiento."
* category.coding[SDOH] ^requirements = "Permite codificaciones alternativas dentro de un value set y traducciones a otros sistemas de códigos.\r\nLos códigos de este conjunto de valores pueden utilizarse para asignar una categoría de SDOH (por ejemplo,inseguridad alimentaria,inseguridad en el transporte,etc.) a un procedimiento.Se recomienda utilizar los códigos de categoría de SDOH para facilitar la búsqueda de procedimientos de SDOH que aborden condiciones,observaciones,solicitudes de servicio o metas/objetivos de SDOH."
* category.coding[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."
* code from CLCoreProcedureCodes (required)
* code ^definition = "El procedimiento específico que se realiza.Utilice texto si la naturaleza exacta del procedimiento no puede ser codificada."
* code ^binding.description = "Códigos que describen el tipo de procedimiento"
* performed[x] ^requirements = "NOTA: dateTime debería ser \"Must Support\",pero actualmente las herramientas no lo soportan. "
* reasonCode ^comment = "Procedure.reasonCode y Procedure.reasonReference no están destinados a ser duplicativos.Para una única razón,se puede utilizar ya sea Procedure.reasonCode o Procedure.reasonReference.Procedure.reasonCode puede ser un código resumido, o Procedure.reasonReference puede usarse para referirse a una definición muy precisa de la razón utilizando Condition | Observation | Procedure | DiagnosticReport | DocumentReference.Ambos, Procedure.reasonCode y Procedure.reasonReference,pueden usarse si están escribiendo diferentes razones para el procedimiento.\r\n\r\nLa información representada por Procedure.reasonCode puede superponerse significativamente con la información representada por Procedure.reasonReference.Múltiples enfoques para representar la misma información pueden impactar negativamente la interoperabilidad.Por lo tanto,donde se podría proporcionar información similar ya sea a través de Procedure.reasonCode o Procedure.reasonReference, se recomienda usar Procedure.reasonReference para proporcionar una razón de por qué se realizó un procedimiento. "
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^comment = "Procedure.reasonCode y Procedure.reasonReference no están destinados a ser duplicativos. Para una única razón, se puede utilizar ya sea Procedure.reasonCode o Procedure.reasonReference. Procedure.reasonCode puede ser un código resumido, o Procedure.reasonReference puede usarse para referirse a una definición muy precisa de la razón utilizando Condition | Observation | Procedure | DiagnosticReport | DocumentReference. Ambos, Procedure.reasonCode y Procedure.reasonReference, pueden usarse si están describiendo diferentes razones para el procedimiento.\r\n\r\nAdemás, consulte los Comentarios para reasonCode."
* reasonReference contains SupportedReasonReference 0..* MS
* reasonReference[SupportedReasonReference] only Reference(SDOHCCConditionCL or SDOHCCObservationScreeninigResponseCL or SDOHCCObservacionAssessmentCL)
* reasonReference[SupportedReasonReference] ^comment = "Procedure.reasonCode y Procedure.reasonReference no están destinados a ser duplicativos. Para una única razón, se puede utilizar ya sea Procedure.reasonCode o Procedure.reasonReference. Procedure.reasonCode puede ser un código resumido, o Procedure.reasonReference puede usarse para referirse a una definición muy precisa de la razón utilizando Condition | Observation | Procedure | DiagnosticReport | DocumentReference. Ambos, Procedure.reasonCode y Procedure.reasonReference, pueden usarse si están describiendo diferentes razones para el procedimiento."
* reasonReference[SupportedReasonReference] ^requirements = "Cuando un procedimiento está justificado por una o más condiciones u observaciones de SDOH, Procedure.reasonReference debe hacer referencia a instancias que cumplan con el perfil de condición SDOHCC, o uno de los perfiles de observación SDOHCC. Sin embargo, también son posibles referencias a otros tipos de instancias."

