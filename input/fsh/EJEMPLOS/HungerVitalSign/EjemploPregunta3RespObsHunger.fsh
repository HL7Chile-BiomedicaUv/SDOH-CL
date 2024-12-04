Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

Instance: Ejemplo-RespuestaObsPreg3Hunger
InstanceOf: $CoreObservacionCL
Usage: #example
Title: "Ejemplo SDOHCC-Respuesta de observación pregunta 3 del cuestionario Signo de inseguridad alimentaria"
Description: "Ejemplo de una respuesta de evaluación que representa el riesgo de inseguridad alimentaria del cuestionario Signo de inseguridad alimentaria. La respuesta sobre el riesgo de inseguridad alimentaria no se responde directamente. Más bien, se determina a partir de las respuestas a las dos preguntas del cuestionario. Por esta razón, esta observación no tiene un Observation.performer. Además, esta observación demuestra el uso de Observation.interpretation:POS para indicar una posible necesidad social relacionada con la salud o un riesgo en el dominio de la inseguridad alimentaria."

* status = #final
* category[0] = $observation-category#social-history
* category[+] = $observation-category#survey "Survey"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = $loinc#88124-3 "Food insecurity risk [HVS]"
* code.text = "Riesgo de inseguridad alimentaria [HVS]"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* effectiveDateTime = "2020-09-10T21:56:54.671Z"
* issued = "2020-09-10T21:56:54.671Z"
* performer = Reference(Ejemplo-Paciente) "María Díaz"
* valueCodeableConcept = $loinc#LA19952-3 "At risk"
* valueCodeableConcept.text = "En riesgo"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* interpretation.text = "Positivo"
* derivedFrom = Reference(Ejemplo-QuestionnaireRespHunger)
