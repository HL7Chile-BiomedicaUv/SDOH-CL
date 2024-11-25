Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: Ejemplo-RespuestaObsEstadoVivienda
InstanceOf: SDOHCCObservationScreeninigResponseCL
Usage: #example
Title: "Ejemplo Respuesta de observación SDOHCC PRAPARE - Estado de vivienda"
Description: "Ejemplo de una respuesta de observación de detección que representa una pregunta y respuesta relacionada con el estado de vivienda del cuestionario PRAPARE representadas en LOINC."

* status = #final
* category[SocialHistory][0] = $observation-category#social-history
* category[Survey][+] = $observation-category#survey "Survey"
* category[SDOH][+] = SDOHCCCodeSystemTemporaryCodesCL#homelessness "Personas sin hogar"
* code = $loinc#71802-3 "Housing status"
* code.text = "¿Cuál es su situación de vivienda en la actualidad?"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* effectiveDateTime = "2021-04-26T13:56:33.747Z"
* issued = "2021-04-26T13:56:33.747Z"
* performer = Reference(Ejemplo-Paciente) "María Díaz"
* valueCodeableConcept = $loinc#LA30190-5 "I do not have housing (staying with others, in a hotel, in a shelter, living outside on the street, on a beach, in a car, or in a park)"
* valueCodeableConcept.text = "No tengo vivienda (estoy quedándome con otros, en un hotel, en un refugio, vivienda en la calle, en una playa, en un auto o en un parque)"
* derivedFrom = Reference(Ejemplo-RespuestaCuestionarioPRAPARE)