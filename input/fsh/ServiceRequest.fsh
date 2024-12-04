Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreLocacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreLocalizacionCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $CorePrestadorCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCServiceRequestCL
Parent: ServiceRequest
Id: SDOHCC-ServiceRequestCL
Title: "Solicitud de servicio de SDOHCC"
Description: "Perfil para solicitudes de servicio que abordan los Determinantes Sociales de la Salud."

* . ^short = "Una solicitud de servicio para abordar una condición, observación o meta/objetivo de los SDOH."
* . ^definition = "Para solicitudes de servicio que abordan condiciones, observaciones o metas/objetivos de los SDOH."
* . ^comment = "Muchos de los perfiles de SDOHCC se hacen referencia entre sí. Un flujo respaldado por esta IG es que las respuestas a cuestionarios resultan en observaciones que pueden utilizarse como evidencia para condiciones que pueden llevar a metas/objetivos, solicitudes de servicio y procedimientos. Sin embargo,también son posibles caminos alternativos."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains SRPertainsToGoal named pertainsToGoal 0..* MS
* extension[pertainsToGoal] ^short = "Pertenece a la meta/objetivo de SDOH."
* extension[pertainsToGoal] ^definition = "Indica que el recurso está relacionado con la medición, logro o progreso hacia la meta/objetivo mencionado. Por ejemplo, una solicitud de servicio para proporcionar vales de alimentos pertenece a la meta/objetivo de lograr seguridad alimentaria."
* extension[pertainsToGoal] ^requirements = "Indica que la solicitud de servicio está relacionada con la meta/objetivo SDOHCC mencionado."
* extension[pertainsToGoal].value[x] only Reference(SDOHCCGoalCL)
* extension[pertainsToGoal].value[x] MS
* basedOn only Reference(CarePlan or ServiceRequest)
* basedOn ^slicing.discriminator.type = #profile
* basedOn ^slicing.discriminator.path = "resolve()"
* basedOn ^slicing.rules = #open
* basedOn contains SupportedBasedOn 0..* MS
* basedOn[SupportedBasedOn] only Reference(SDOHCCServiceRequestCL)
* basedOn[SupportedBasedOn] ^requirements = "Permite que una organización (por ejemplo,una Plataforma de Coordinación) cree una solicitud de servicio para otra organización (por ejemplo,una Organización Comunitaria) basada en una solicitud de servicio SDOHCC de una fuente de referencia (por ejemplo,un proveedor o pagador involucrado en la gestión del cuidado.)"
* status MS
* status ^comment = "El estado está generalmente bajo el control del solicitante: ellos determinan si la orden está en borrador o activa y,después de que ha sido activada,completada,cancelada o suspendida.Los estados relacionados con las actividades del ejecutor se reflejan en el evento correspondiente o utilizando el recurso [Task](task.html).\r\n\r\nSi bien actualmente se permiten todos los valores,puede haber una restricción en los valores en futuras versiones basadas en comentarios de implementación."
* intent MS
* intent ^comment = "Este elemento se etiqueta como un modificador porque la intención altera cuándo y cómo es realmente aplicable el recurso.Si bien actualmente se permiten todos los valores,puede haber una restricción en los valores en futuras versiones basadas en comentarios de implementación."
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "Un código que clasifica el servicio para fines de búsqueda, ordenamiento y visualización (por ejemplo, Educación)."
* category contains SDOH 0..* MS
* category[SDOH] from SDOHCCValueSetSDOHCategoryCL (required)
* category[SDOH] ^short = "Por ejemplo, inseguridad alimentaria | inseguridad en el transporte."
* category[SDOH] ^definition = "Una categoría de SDOH asignada al servicio solicitado."
* category[SDOH] ^requirements = "Los códigos de este value set pueden usarse para asignar una o más categorías de SDOH (por ejemplo, inseguridad alimentaria, inseguridad en el transporte, etc.) a una solicitud de servicio. Se recomienda utilizar códigos de categoría de SDOH para facilitar la búsqueda de solicitudes de servicio que aborden condiciones, observaciones u metas/objetivos de SDOH."
* category[SDOH] ^binding.description = "Códigos para categorías de SDOH de alto nivel."
* priority MS
* code 1.. MS
* code from CLCoreProcedureCodes (required)
* code ^short = "Lo que se está solicitando/ordenando."
* code ^definition = "Un código que identifica un servicio particular (por ejemplo, un procedimiento) que ha sido solicitado."
* code ^binding.description = "Códigos para pruebas o servicios que pueden ser realizados por un individuo, organización o servicio de salud designado."
* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "coding"
* orderDetail ^slicing.rules = #open
* orderDetail contains SubjectContactDetail 0..1 MS
* orderDetail[SubjectContactDetail] = SDOHCCCodeSystemTemporaryCodesCL#contacting-subject-prohibited
* orderDetail[SubjectContactDetail] ^requirements = "Permite marcar una solicitud de servicio en la que el sujeto de la solicitud designa explícitamente que no desea ser contactado (por ejemplo, en casos de violencia doméstica donde el contacto puede poner en riesgo al sujeto.)"
* subject only Reference(Group or $CorePacienteCl or $CoreLocacionCl)
* subject MS
* occurrence[x] MS
* occurrence[x] ^requirements = "NOTA: dateTime debería ser Must Support, pero actualmente las herramientas no lo soportan."
* authoredOn MS
* requester only Reference(RelatedPerson or Device or $CoreRolClinicoCl or $CorePrestadorCl or $CorePacienteCl  or $CoreOrganizacionCl)
* requester MS
* performer only Reference(HealthcareService or Device or RelatedPerson or $CorePacienteCl or $CorePrestadorCl or $CoreRolClinicoCl or $CoreOrganizacionCl or CareTeam)
* performer MS
* reasonCode ^comment = "Este elemento representa la razón por la cual se está realizando la referencia y puede usarse para decidir cómo se llevará a cabo el servicio,o incluso si se realizará en absoluto. Utilice el elemento CodeableConcept.text si los datos son texto libre (no codificado), como se muestra en [CT Scan example](servicerequest-example-di.html).\r\n\r\nLa información representada por ServiceRequest.reasonCode puede superponerse significativamente con la información representada por ServiceRequest.reasonReference. Múltiples enfoques para representar la misma información pueden afectar negativamente la interoperabilidad. Por lo tanto, donde se pueda porporcionar información similar mediante ServiceRequest.reasonCode o ServiceRequest.reasonReference, se recomienda utilizar ServiceRequest.reasinReference para proporcionar una razón de por qué se hizo la solicitud de servicio."
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^comment = "Este elemento representa la razón por la cual se está realizando la referencia y puede usarse para decidir cómo se llevará a cabo el servicio, o incluso si se realizará en absoluto. Para ser lo más específico posible, se de utilizar una referencia a *Observation* o *Condition* si está disponible. De lo contrario, al referenciar *DiagnosticReport*, debe contener un hallazgo en DiagnosticReport.conclusion y/o DiagnosticReport.conclusionCode. Al usar una referencia a *DocumentReference*, el documento objetivo debe contener un lenguaje claro sobre los hallazgos que proporcione la razón relevante para esta solicitud de servicio.Utilice el elemento de texto CodeableConcept en ServiceRequest.reasonCode si los datos son texto libre (no codificado).\r\n\r\nAdemás,consulte el comentario sobre reasonCode."
* reasonReference contains SupportedReasonReference 0..* MS
* reasonReference[SupportedReasonReference] only Reference(SDOHCCConditionCL or SDOHCCObservationScreeninigResponseCL or SDOHCCObservacionAssessmentCL)
* reasonReference[SupportedReasonReference] ^comment = "Este elemento representa la razón por la cual se está realizando la referencia y puede usarse para decidir cómo se llevará a cabo el servicio,o incluso si se realizará en absoluto.Para ser lo más específico posible, se debe utilizar una referencia a *Observation* o *Condition* si está disponible. De lo contrario, al referenciar *DiagnosticReport*, debe contener un hallazgo en DiagnosticReport.conclusion y/o DiagnosticReport.conclusionCode. Al usar una referencia a *DocumentReference*, el documento objetivo debe contener un lenguaje claro sobre los hallazgos que proporcione la razón relevante para esta solicitud de servicio. Utilice el elemento de texto CodeableConcept en ServiceRequest.reasonCode si los datos son texto libre (no codificado)."
* reasonReference[SupportedReasonReference] ^requirements = "Cuando una solicitud de servicio está justificada por una o más condiciones u observaciones de SDOH,ServiceRequest.reasonReference debe hacer referencia a instancias que cumplan con el perfil de Condición de SDOHCC, o una de los perfiles e Observación de SDOHCC.Sin embargo, también son posibles referencias a otros tipos de instancias."
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^definition = "Información clínica adicional sobre el paciente que puede influir en los servicios o en sus interpretaciones.Esta información incluye diagnósticos,hallazgos clínicos y otras observaciones."
* supportingInfo contains SupportedSupportingInfo 0..* MS
* supportingInfo[SupportedSupportingInfo] only Reference(SDOHCCConsentCL)
* supportingInfo[SupportedSupportingInfo] ^requirements = "Cuando una solicitud de servicio está respaldada por un consentimiento de SDOH, ServiceRequest.supportingInfo debe hacer referencia a instancias que cumplan con el perfil de Consentimiento de SDOHCC. Sin embargo, también son posibles referencias a otros tipos de instancias."
* specimen ..0
* bodySite ..0