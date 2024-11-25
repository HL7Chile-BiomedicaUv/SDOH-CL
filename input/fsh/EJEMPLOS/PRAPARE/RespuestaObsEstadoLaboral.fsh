Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: Ejemplo-RespuestaObsEstadoLaboral
InstanceOf: SDOHCCObservationScreeninigResponseCL
Usage: #example
Title: "Ejemplo Respuesta de observación SDOHCC PRAPARE - Estado laboral"
Description: "Ejemplo de una respuesta de observación de detección que representa una pregunta y respuesta relacionada con el estado laboral del cuestionario PRAPARE representadas en LOINC."

* status = #final
* category[SocialHistory][0] = $observation-category#social-history
* category[Survey][+] = $observation-category#survey "Survey"
* category[SDOH][+] = SDOHCCCodeSystemTemporaryCodesCL#employment-status "Estado laboral"
* code = $loinc#67875-5 "Employment status - current"
* code.text = "¿Cuál es tu situación laboral actual?"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* effectiveDateTime = "2021-04-26T13:56:33.747Z"
* issued = "2021-04-26T13:56:33.747Z"
* performer = Reference(Ejemplo-Paciente) "María Díaz"
* valueCodeableConcept = $loinc#LA17956-6 "Unemployed"
* valueCodeableConcept.text = "Desempleada"
* derivedFrom = Reference(Ejemplo-RespuestaCuestionarioPRAPARE)