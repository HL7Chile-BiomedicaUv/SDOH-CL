Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $loinc = http://loinc.org

Instance: Ejemplo-QuestionnaireHunger
InstanceOf: Questionnaire
Usage: #example
Title: "SDOHCC - Cuestionario signos de inseguridad alimentaria"
Description: "Instancia de cuestionario que representa las preguntas y respuestas del cuestionario Hunger Vital Sing [HSV] de LOINC (code 88121-9)."

* name = "SDOHCCCuestionarioSignosInseguridadAlimentaria"
* title = "SDOHCC Cuestionario Signos de inseguridad alimentaria"
* status = #draft
* subjectType = #Patient
* date = "2020-09-01T04:01:34+00:00"

//PREGUNTAS
* item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Desplegable"
* item[=].linkId = "/88122-7"
* item[=].code = $loinc#88122-7 "Within the past 12 months we worried whether our food would run out before we got money to buy more [U.S. FSS]"
* item[=].text = "En los últimos 12 meses nos preocupamos de si la comida se acabaría antes de que tuviéramos dinero para comprar más."
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $loinc#LA28397-0 "A menudo es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA6729-3 "A veces es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA28398-8 "Nunca es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA15775-2 "No sabe / Se negó"


* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "dESPLEGABLE"
* item[=].linkId = "/88123-5"
* item[=].code = $loinc#88123-5 "Within the past 12 months the food we bought just didn't last and we didn't have money to get more [U.S. FSS]"
* item[=].text = "En los últimos 12 meses, la comida que compramos simplemente no duró y no teníamos dinero para comprar más."
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $loinc#LA28397-0 "A menudo es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA6729-3 "A veces es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA28398-8 "Nunca es cierto"
* item[=].answerOption[+].valueCoding = $loinc#LA15775-2 "No sabe/ Se negó"


* item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension[=].valueCodeableConcept.text = "Desplegable"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "thisItem"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%questionnaire.item.where(linkId = '/88124-3')"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "atRiskCoding"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%thisItem.answerOption.valueCoding.where(code='LA19952-3')"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "noRiskCoding"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%thisItem.answerOption.valueCoding.where(code='LA19983-8')"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.description = "risk determination"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "iif(%answeredEitherQ, iif(%riskStatus, %atRiskCoding, %noRiskCoding), {})"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.description = "risk determination"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "iif(%answeredEitherQ, iif(%riskStatus, %atRiskCoding, %noRiskCoding), {})"
* item[=].linkId = "/88124-3"
* item[=].code = $loinc#88124-3 "Food insecurity risk [HVS]"
* item[=].text = "Riesgo de inseguridad alimentaria"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $loinc#LA19952-3 "En riesgo"
* item[=].answerOption[+].valueCoding = $loinc#LA19983-8 "Sin riesgo"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Botón de ayuda"
* item[=].item.linkId = "/88124-3-help"
* item[=].item.text = "Una respuesta de \"a menudo cierto\" o \"a veces cierto\" a una o ambas de las preguntas del Hunger Vital Sign™ identifica a un paciente como en riesgo de inseguridad alimentaria (IA)."
* item[=].item.type = #display
