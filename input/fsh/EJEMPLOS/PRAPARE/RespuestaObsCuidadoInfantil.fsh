Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: Ejemplo-RespuestaObsCuidadoInfantil
InstanceOf: SDOHCCObservationScreeninigResponseCL
Usage: #example
Title: "Ejemplo Respuesta de observación SDOHCC PRAPARE - Necesidad cuidado infantil"
Description: "Ejemplo de una respuesta de observación de detección que representa una pregunta y respuesta relacionada con las necesidades no satisfechas de cuidado infantil del cuestionario PRAPARE representadas en LOINC."

* status = #final
* category[SocialHistory][0] = $observation-category#social-history
* category[Survey][+] = $observation-category#survey "Survey"
* category[SDOH][+] = SDOHCCCodeSystemTemporaryCodesCL#material-hardship "Dificultades materiales"
* code = $loinc#93031-3 "Have you or any family members you live with been unable to get any of the following when it was really needed in past 1 year [PRAPARE]"
* code.text = "En el último año, ¿usted o algún miembro de su familia con el que vive no ha podido obtener alguno de los siguientes cuando realmente lo necesitaba?"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* effectiveDateTime = "2021-04-26T13:56:33.747Z"
* issued = "2021-04-26T13:56:33.747Z"
* performer = Reference(Ejemplo-Paciente) "María Díaz"
* valueCodeableConcept = $loinc#LA30127-7 "Child care"
* valueCodeableConcept.text = "Cuidado de los niños"
* derivedFrom = Reference(QuestionnaireResponse/Ejemplo-RespuestaCuestionarioPRAPARE)