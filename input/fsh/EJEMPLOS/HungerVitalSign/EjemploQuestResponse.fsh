Alias: $loinc = http://loinc.org

Instance: Ejemplo-QuestionnaireRespHunger
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Ejemplo SDOHCC- Respuesta del cuestionario Signos de inseguridad alimentaria."
Description: "Ejemplo de un QuestionnaireResponse de SDC que representa las preguntas y las respuestas seleccionadas del cuestionario de Hunger Vital Sign de LOINC."

* questionnaire = "https://hl7chile.cl/fhir/ig/gravitycl/Questionnaire/Ejemplo-QuestionnaireHunger"
* questionnaire.extension.url = "http://hl7.org/fhir/StructureDefinition/display"
* questionnaire.extension.valueString = "SDOHCC Cuestionario Signos de inseguridad alimentaria"

* status = #completed
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* authored = "2020-09-10T21:56:54.671Z"
* source = Reference(Ejemplo-Paciente) "María Díaz"
* item[0].linkId = "/88122-7"
* item[=].text = "En los últimos 12 meses nos preocupamos de si la comida se acabaría antes de que tuviéramos dinero para comprar más."
* item[=].answer.valueCoding = $loinc#LA28397-0 "Often true"
* item[+].linkId = "/88123-5"
* item[=].text = "En los últimos 12 meses, la comida que compramos simplemente no duró y no teníamos dinero para comprar más."
* item[=].answer.valueCoding = $loinc#LA28397-0 "Often true"
* item[+].linkId = "/88124-3"
* item[=].text = "Riesgo de inseguridad alimentaria"