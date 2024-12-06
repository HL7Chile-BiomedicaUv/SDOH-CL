Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $condition-clinical = http://hl7.org/fhir/ValueSet/condition-clinical
Alias: $condition-ver-status = http://hl7.org/fhir/ValueSet/condition-ver-status
Alias: $VSDiagnosticosSCT = https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDiagnosticosSCT
Alias: $CoreDiagnosticoCL = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl
Alias: $CorePrestadorCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $sdc-questionnaireresponse = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Alias: $SDOHCC-ExtensionConditionAsserter = http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ExtensionConditionAsserter

Profile: SDOHCCConditionCL
Parent: $CoreDiagnosticoCL
Id: SDOHCC-ConditionCL
Title: "Condición SDOHCC"
Description: "Perfil de las condiciones de los Determinantes Sociales de la Salud (SDOH)."

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* obeys SDOH-Con-1
* . ^short = "Información detallada sobre las condiciones, problemas o diagnósticos de los Determinantes Sociales de la Salud (SDOH)."
* . ^definition = "Para la representación de las condiciones de los Determinantes Sociales de la Salud (SDOH)."
* . ^comment = "Muchos de los perfiles de SDOHCC se hacen referencia entre sí.Un flujo apoyado por esta IG es que las respuestas de los cuestionarios resultan en observaciones que pueden ser utilizadas como evidencia para condiciones que pueden llevar a metas, solicitudes de servicio y procedimientos. Sin embargo también son posibles caminos alternativos (por ejemplo, para llegar a las condiciones de SDOH).\r\n\r\nUn uso específico para este perfil es representar una preocupación de salud que sea: 1) directamente afirmada en base a la respuesta del paciente a una pregunta específica de un cuestionario de evaluación de SDOH, o 2) calculada/generada en base a las respuestas del paciente a múltiples preguntas. Las preguntas y respuestas del cuestionario de evaluación también se representan utilizando SDC Questionnaire, SDC QuestionnaireResponse y SDOHCC Screening Response Observation."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $SDOHCC-ExtensionConditionAsserter named asserterDevice 0..1 MS
* extension[asserterDevice] ^condition = "SDOH-Con-1"
* extension[asserterDevice].value[x] only Reference(Device)

* verificationStatus ^comment = "El estado de verificación no es obligatorio. Por ejemplo, cuando un paciente se queja de estrés durante una consulta con un proveedor, es poco probable que haya un estado de verificación. El tipo de datos es CodeableConcept porque el estado de verificación implica cierto juicio clínico, de modo que podría ser necesaria más especificidad de la que permite el conjunto de valores requerido de FHIR. Por ejemplo, una codificación SNOMED podría permitir una mayor especificidad.\r\n\r\nPara las condiciones SDOH que se generan automáticamente en función de la respuesta a un cuestionario, el asertor de la condición es un \"Dispositivo\" y la categoría de la condición debe ser \"preocupación de salud\". En ese caso, el estado de verificación de la condición debe ser \"no confirmado\" y debe cambiarse a \"confirmado\" solo después de una revisión y acuerdo por parte del proveedor y el paciente."

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = ""
* category contains SDOH 0..*
* category[SDOH] from SDOHCCValueSetSDOHCategoryCL (required)
* category[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte."
* category[SDOH] ^definition = "Una categoría de SDOH asignada a la condición."
* category[SDOH] ^requirements = "Los códigos de este conjunto de valores se pueden usar para asignar una o más categorías de SDOH (por ejemplo, inseguridad alimentaria, inseguridad en el transporte, etc.) a una condición. Se recomienda utilizar los códigos de categorías de SDOH para facilitar la búsqueda de condiciones de SDOH."
* category[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."

* code 1..1 MS
* code from $VSDiagnosticosSCT (required)
* code ^requirements = "El código es obligatorio y debe seleccionarse del value set enlazado."
* code ^binding.description = "Value set para describir el problema real experimentado por el paciente."

* bodySite ..0

* onset[x] only dateTime or Period
* onset[x] MS
* onset[x] ^short = "Fecha y hora o período estimados."
* onset[x] ^definition = "Fecha y hora o período estimado o real en que comenzó la condición."
* onset[x] ^comment = "Para las condiciones de SDOH que tienen su inicio en un período prolongado (o difuso)(por ejemplo, el mes pasado), el inicio de la condición puede utilizar una representación de menor precisión (por ejemplo, mes/año o año) en lugar de una representación de mayor precisión (por ejemplo, año/mes/fecha/hora/minuto)."

* abatement[x] only dateTime or Period
* abatement[x] MS
* abatement[x] ^definition = "La fecha y hora o período estimado o real en que la condición se revolvió o entró en remisión. Esto se llama \"abatimiento\" debido a las muchas connotaciones sobrecargadas asociadas con \"remisión\" o \"resolución\"."
* abatement[x] ^comment = "No hay una distinción explícita entre resolución y remisión, ya que en muchos casos la diferencia no es clara. Si no hay un elemento de abatimiento, se desconoce si la condición se ha resuelto o ha entrado en remisión; las aplicaciones y los usuarios deben asumir generalmente que la condición sigue siendo válida. Cuando existe un abatementString, implica que la condición ha sido abatida.\r\n\r\nPara las condiciones de SDOH que tiene un período de abatimiento difuso, se puede utilizar una representación de menor precisión (por ejemplo, mes/año o año). Sin embargo, para las condiciones de SDOH que finalizan en un punto específico en el tiempo (por ejemplo, la inseguridad alimentaria puede cesar al conseguir un nuevo empleo o al obtener elegibilidad para un programa de alimentos), también se puede utilizar una representación de mayor precisión (por ejemplo, año/mes/fecha)."

* recorder only Reference($CorePrestadorCl or $CoreRolClinicoCl)

* asserter only Reference(RelatedPerson or $CorePacienteCl or $CorePrestadorCl or $CoreRolClinicoCl)
* asserter MS
* asserter ^short = "Persona o dispositivo que afirma esta condición."
* asserter ^definition = "El individuo o dispositivo que realiza la declaración de la condición."
* asserter ^comment = "Las referencias DEBEN ser a un recurso FHIR real y DEBEN ser resolubles (permitiendo el control de acceso,la indisponibilidad temporal, etc.). La resolución puede ser mediante la recuperación desde la URL o, cuando sea aplicable por tipo de recurso, tratando una referencia absoluta como una URL canónica y buscándola en un registro/repositorio local.\r\n\r\nPara una condición que se genera automáticamente en base a la respuesta directa del paciente a una pregunta específica de un cuestionario de detección de SDOH, el asertor de la condición debe ser el paciente. Para una condición que se genera automáticamente a partir de un cálculo que utiliza las respuestas del paciente a múltiples preguntas, el asertor de la condición debe referenciar \"Dispositivo\" (utilizando la extensión AsserterDevice) para especificar el dispositivo utilizado para calcular la condición."
* asserter ^condition = "SDOH-Con-1"

* stage ..0

* evidence MS
* evidence.code ^comment = "No toda la terminología utiliza este patrón general. En algunos casos, los modelos no deben usar CodeableConcept y utilizar Coding directamente, proporcionando su propia estructura para gestionar texto, codificaciones, traducciones y la relación entre elementos y la pre- y post-coordinación.\r\n\r\nLa información representada por Condition.evidence.code puede superponerse significativamente con la información representada por Condition.evidence.detail. Múltiples enfoques para representar la misma información pueden impactar negativamente la interoperabilidad. Por lo tanto, donde se pueda proporcionar información similar mediante Condition.evidence.code o Condition.evidence.detail, se recomienda que se utilice Condition.evidence.detail como evidencia de apoyo para la condición."
* evidence.detail ^slicing.discriminator.type = #profile
* evidence.detail ^slicing.discriminator.path = "resolve()"
* evidence.detail ^slicing.rules = #open
* evidence.detail ^comment = "Las referencias DEBEN ser a un recurso FHIR real y DEBEN ser resolubles (permitiendo el control de acceso, la indisponibilidad temporal, etc.). La resolución puede ser mediante la recuperación desde la URL o, cuando sea aplicable por tipo de recurso, tratando una referencia absoluta como una URL canónica y buscándola en un registro/repositorio local.\r\n\r\nAdemás,consulte el comentario para Condition.evidence.code."
* evidence.detail contains SupportedDetail 0..* MS
* evidence.detail[SupportedDetail] only Reference(SDOHCCObservationScreeninigResponseCL or SDOHCCConditionCL or SDOHCCObservacionAssessmentCL or $sdc-questionnaireresponse)
* evidence.detail[SupportedDetail] ^definition = "Links a otra información relevante."
* evidence.detail[SupportedDetail] ^requirements = "Cuando una condición se basa en una o más observaciones de SDOH generadas a partir de respuestas a cuestionarios, Condition.evidence.detail debe referenciar instancias que cumplan con la Observación de Detección SDOHCC o la Respuesta al Cuestionario SDC.Sin embargo,también son posibles referencias a otros tipos de instancias."

Invariant: SDOH-Con-1
Description: "Can only have a max of one asserter."
* severity = #error
* expression = "extension('http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ExtensionConditionAsserter').count()+asserter.count()<=1"
* xpath = "true()"

Mapping: argonaut-dq-dstu2
Id: argonaut-dq-dstu2
Title: "Argonaut-DQ-DSTU2"
Source: SDOHCCConditionCL
Target: "http://unknown.org/Argonaut-DQ-DSTU2"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: SDOHCCConditionCL
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: SDOHCCConditionCL
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: SDOHCCConditionCL
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: SDOHCCConditionCL
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: SDOHCCConditionCL
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: SDOHCCConditionCL
Target: "http://snomed.org/attributebinding"

