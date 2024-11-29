Alias: $temp = http://hl7.org/fhir/uv/sdc/CodeSystem/temp
Alias: $SDOHCC-TaskForReferralManagement = http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-TaskForReferralManagement
Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl
Alias: $CoreRolClinicoCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl
Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl
Alias: $sdc-questionnaire = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire
Alias: $CorePrestadorCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl
Alias: $sdc-questionnaireresponse = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse

Profile: SDOHCCTaskForPatientCL
Parent: Task
Id: SDOHCC-TaskForPatientCL
Title: "Tarea SDOHCC para el paciente"
Description: "Perfil para las tareas relacionadas con SDOH que deben ser realizadas por el paciente o alguien que actúe en su nombre."
* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* obeys SDOH-Task-1 and SDOH-Task-2 and SDOH-Task-3 and SDOH-Task-4 and SDOH-Task-5 and SDOH-Task-6 and SDOH-Task-7
* . ^short = "Una solicitud para completar un cuestionario o solicitud de servicio relacionado con SDOH."
* partOf ^slicing.discriminator.type = #profile
* partOf ^slicing.discriminator.path = "resolve()"
* partOf ^slicing.rules = #open
* partOf contains SupportedPartOf 0..* MS
* partOf[SupportedPartOf] only Reference(SDOHCCTaskForReferralManagementCL or SDOHCCTaskForPatientCL) 
* status MS
* status from SDOHCCValueSetTaskStatusCL (required)
* status ^comment = "Para obtener más detalles sobre Task.status, consulte [Checking Task Status](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/checking_task_status.html)"
* status ^requirements = "Estos estados permiten la coordinación del estado de la tarea con soluciones de flujo de trabajo listas para usar que respaldan la automatización de tareas."
* statusReason MS
* statusReason ^definition = "Si la tarea es cancelada por el paciente, se debe proporcionar una explicación de por qué."
* statusReason ^comment = "Esto se aplica al estado actual.Consulte el historial de la tarea para ver las razones de los estados anteriores.Si el estado de la tarea está cancelado,entonces se debe incluir Task.statusReason.text."
* statusReason.text 1.. MS
* intent = #order (exactly)
* intent ^short = "order"
* intent ^definition = "Indica el \"nivel\" de ejecutabilidad asociado con la tarea."
* intent ^comment = "Las tareas del paciente siempre serán órdenes."
* priority 1.. MS
* priority from SDOHCCValueSetTaskPriorityCL (required)
* priority ^short = "rutinaria | urgente."
* priority ^definition = "Indica cuán rápido debe ser abordada la tarea por el paciente."
* priority ^requirements = "Se utiliza para identificar el nivel de prioridad asignado a esta tarea.Para las tareas identificadas como urgentes,la capacidad de entregar un servicio relacionado puede depender de la finalización de la tarea."
* code 1.. MS
* code from SDOHCCValueSetTaskCodeCL (extensible)
* code.text MS
* description MS
* description ^comment = "Si Task.code es \"información general\", Task.description debe ser mostrada al usuario sin ninguna otra expectativa computable,excepto permitir que el paciente actualice Task.status y,opcionalmente,capture una respuesta en texto libre para Task.output."
* description ^condition[0] = "SDOH-Task-2"
* description ^condition[+] = "SDOH-Task-7"
* focus MS
* focus ^condition[0] = "SDOH-Task-3"
* for 1.. MS
* for only Reference($CorePacienteCl)
* authoredOn 1.. MS
* requester 1.. MS
* requester only Reference($CoreRolClinicoCl or $CoreOrganizacionCl)
* owner 1.. MS
* owner only Reference($CorePacienteCl or RelatedPerson)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    Questionnaire 0..1 MS and
    QuestionnairePDF 0..1 MS and
    QuestionnaireURL 0..1 MS and
    QuestionnaireCategory 0..1 MS and
    Contact 0..* MS
* input[Questionnaire] ^condition[0] = "SDOH-Task-1"
* input[Questionnaire].type = $temp#questionnaire
* input[Questionnaire].type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* input[Questionnaire].type ^binding.extension.valueString = "TaskInputParameterType"
* input[Questionnaire].type ^binding.strength = #example
* input[Questionnaire].type ^binding.description = "Códigos para identificar tipos de parámetros de entrada.Estos suelen ser específicos de un flujo de trabajo particular.Los códigos representan tipos de cuestionarios que se le podría pedir al paciente que complete."
* input[Questionnaire].value[x] only Canonical($sdc-questionnaire)
* input[Questionnaire].value[x] ^comment = "Esto hace referencia al perfil de Cuestionario Base SDC para permitir el uso de cuestionarios (por ejemplo,un cuestionario de satisfacción del paciente) que no son cuestionarios de detección de SDOH.Sin embargo,para cuestionarios que estaán destinador a producir recursos FHIR (por ejemplo,Observaciones o Condiciones),se debe utilizar el Cuestionario Extraíble SDC-StructureMap."
* input[QuestionnairePDF] ^condition[0] = "SDOH-Task-1"
* input[QuestionnairePDF].type = SDOHCCCodeSystemTemporaryCodesCL#questionnaire-pdf
* input[QuestionnairePDF].value[x] only Reference(DocumentReference)
* input[QuestionnaireURL] ^condition[0] = "SDOH-Task-1"
* input[QuestionnaireURL].type = SDOHCCCodeSystemTemporaryCodesCL#questionnaire-url
* input[QuestionnaireURL].value[x] only url
* input[QuestionnaireCategory] ^condition[0] = "SDOH-Task-1"
* input[QuestionnaireCategory].type = SDOHCCCodeSystemTemporaryCodesCL#questionnaire-category
* input[QuestionnaireCategory].value[x] only CodeableConcept
* input[QuestionnaireCategory].value[x] from SDOHCCValueSetSDOHQuestionnaireCategoryCL (required)
* input[QuestionnaireCategory].value[x] ^binding.description = "Types of Social Determinant of Health (SDOH) questionnaires that the patient might be asked to complete"
* input[Contact] ^comment = "Si Task.code es \"hacer-contacto\" y se proporciona múltiples Task.inputs,la intención es que el propietario de la tarea seleccione solo uno para contactar.Si se necesita hacer más de un contacto,debe haber tareas separadas."
* input[Contact] ^condition[0] = "SDOH-Task-4"
* input[Contact].type = SDOHCCCodeSystemTemporaryCodesCL#contact-entity
* input[Contact].type ^comment = "Cuando Task.code es \"hacer-contacto\", \"contacto-entidad\" se utiliza para Task.input.type para indicar que el propietario de la tarea debe contactar a uno de los servicios de salud representados en Task.input.value."
* input[Contact].value[x] only Reference(SDOHCCHealthcareServiceCL or  $CoreRolClinicoCl or $CorePrestadorCl or $CoreOrganizacionCl)
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open
* output ^condition[0] = "SDOH-Task-2"
* output ^condition[+] = "SDOH-Task-5"
* output ^condition[+] = "SDOH-Task-6"
* output ^condition[+] = "SDOH-Task-7"
* output contains
    QuestionnaireResponse 0..1 MS and
    QuestionnairePDFCompleted 0..1 MS and
    GeneralInformationResponse 0..* MS and
    ChosenContact 0..1 MS
* output[QuestionnaireResponse] ^condition[0] = "SDOH-Task-5"
* output[QuestionnaireResponse] ^condition[+] = "SDOH-Task-5"
* output[QuestionnaireResponse] ^condition[+] = "SDOH-Task-6"
* output[QuestionnaireResponse] ^condition[+] = "SDOH-Task-7"
* output[QuestionnaireResponse].type = $temp#questionnaire-response
* output[QuestionnaireResponse].value[x] only Reference($sdc-questionnaireresponse)
* output[QuestionnairePDFCompleted] ^condition[0] = "SDOH-Task-6"
* output[QuestionnairePDFCompleted] ^condition[+] = "SDOH-Task-5"
* output[QuestionnairePDFCompleted] ^condition[+] = "SDOH-Task-6"
* output[QuestionnairePDFCompleted] ^condition[+] = "SDOH-Task-7"
* output[QuestionnairePDFCompleted].type = SDOHCCCodeSystemTemporaryCodesCL#questionnaire-pdf-completed
* output[QuestionnairePDFCompleted].value[x] only Reference(DocumentReference)
* output[GeneralInformationResponse] ^condition[0] = "SDOH-Task-2"
* output[GeneralInformationResponse] ^condition[+] = "SDOH-Task-7"
* output[GeneralInformationResponse] ^condition[+] = "SDOH-Task-6"
* output[GeneralInformationResponse] ^condition[+] = "SDOH-Task-7"
* output[GeneralInformationResponse].type = SDOHCCCodeSystemTemporaryCodesCL#general-information-response
* output[GeneralInformationResponse].value[x] only markdown
* output[ChosenContact] ^comment = "Si Task.code es \"hacer-contacto\" y se proporcionan múltiples Task.input, la intención es que el propietario de la tarea seleccione solo uno para contactar y pueda indicar el \"contacto-elegido\"."
* output[ChosenContact] ^condition[0] = "SDOH-Task-7"
* output[ChosenContact] ^condition[+] = "SDOH-Task-5"
* output[ChosenContact] ^condition[+] = "SDOH-Task-6"
* output[ChosenContact] ^condition[+] = "SDOH-Task-7"
* output[ChosenContact].type = SDOHCCCodeSystemTemporaryCodesCL#chosen-contact
* output[ChosenContact].value[x] only markdown


Invariant: SDOH-Task-1
Description: "Si Task.code es “complete-questionnaire”, entonces se requiere exactamente un Taks.input de cualquiera de los siguientes: \"questionnaire\", \"questionnaire-pdf\", o \"questionnaire-url\", y también se requiere Task.input \"questionnaire-category\" ."
* severity = #error
* expression = "code.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='complete-questionnaire').exists() implies ((input.type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire').exists() xor input.type.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='questionnaire-pdf').exists() xor input.type.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='questionnaire-url').exists()) and input.type.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='questionnaire-category').exists())"
* xpath = "true()"

Invariant: SDOH-Task-2
Description: "If Task.code is “general-information”, then Task.description is required and Task.output, if present, must be “general-information-response”."
* severity = #error
* expression = "code.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='general-information').exists() implies (description.exists() and (output.empty() or output.type.coding.all(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='general-information-response').exists()))"
* xpath = "true()"

Invariant: SDOH-Task-3
Description: "If Task.code is \"review-material\", then Task.focus of DocumentReference is required."
* severity = #error
* expression = "code.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='review-material').exists() \n implies focus.resolve().all($this is DocumentReference)"
* xpath = "true()"

Invariant: SDOH-Task-4
Description: "If Task.code is \"make-contact\", then Task.input of at least one \"contact-entity\" is required."
* severity = #error
* expression = "code.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='make-contact').exists() implies input.type.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='contact-entity').exists()"
* xpath = "true()"

Invariant: SDOH-Task-5
Description: "If Task.input is \"questionnaire\", then Task.output, if present, must be \"questionnaire-response\"."
* severity = #error
* expression = "input.type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire').exists() implies (output.type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire-response').exists() or output.empty())"
* xpath = "true()"

Invariant: SDOH-Task-6
Description: "If Task.input is \"questionnaire-pdf\", then Task.output, if present, must be \"questionnaire-pdf-completed\"."
* severity = #error
* expression = "input.type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire-pdf').exists() implies (output.type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire-pdf-completed').exists() or output.empty())"
* xpath = "true()"

Invariant: SDOH-Task-7
Description: "If Task.code is \"make-contact\", then Task.description is required and Task.output, if present, must be \"chosen-contact\"."
* severity = #error
* expression = "code.coding.where(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='make-contact').exists() implies (description.exists() and (output.empty() or output.type.coding.all(system='https://hl7chile.cl/fhir/ig/gravitycl/CodeSystem/SDOHCC-CodeSystemTemporaryCodesCL' and code='chosen-contact').exists()))"
* xpath = "true()"