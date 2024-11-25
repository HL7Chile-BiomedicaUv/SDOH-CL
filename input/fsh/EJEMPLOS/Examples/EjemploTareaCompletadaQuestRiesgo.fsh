Alias: $temp = http://hl7.org/fhir/uv/sdc/CodeSystem/temp

Instance: Ejemplo-TareaCompletadaCuestionarioRiesgo
InstanceOf: SDOHCCTaskForPatientCL
Usage: #example
Title: "Ejemplo SDOHCC-Tarea completada de cuestionario de riesgo del paciente"
Description: "Ejemplo de una tarea completada para el paciente donde la tarea onsistió en completar un cuestionario de Hunger Vital Sign (un cuestionario de la categoría \"cuestionario de riesgo\".)"

* status = #completed
* intent = #order
* priority = #routine
* code = $temp#complete-questionnaire "Cuestionario completo"
* for = Reference(Ejemplo-Paciente) "María Díaz"
* authoredOn = "2020-09-01T21:56:54.671Z"
* requester = Reference(Ejemplo-Organizacionprestadora) "Centro de Salud Familiar Arauco"
* owner = Reference(Ejemplo-Paciente) "María Díaz"
* input[0].type = $temp#questionnaire "Questionnaire"
* input[=].valueCanonical = "https://hl7chile.cl/fhir/ig/gravitycl/Questionnaire/Ejemplo-QuestionnaireHunger"
* input[+].type = SDOHCCCodeSystemTemporaryCodesCL#questionnaire-category "Categoría de cuestionario"
* input[=].valueCodeableConcept = SDOHCCCodeSystemTemporaryCodesCL#risk-questionnaire "Cuestionario de riesgo"
* output.type = $temp#questionnaire-response "Questionnaire Response"
* output.valueReference = Reference(Ejemplo-QuestionnaireRespHunger)