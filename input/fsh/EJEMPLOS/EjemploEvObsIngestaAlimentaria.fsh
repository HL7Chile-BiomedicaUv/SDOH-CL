Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-EvaluacionObservacionAlimentos
InstanceOf: SDOHCCObservacionAssessmentCL
Usage: #example
Title: "Ejemplo SDOHCC-Evaluación de observación sobre ingesta alimentaria inadecuada"
Description: "Un ejemplo de una observación de ingesta alimentaria inadecuada que no necesariamente proviene únicamente de una encuesta de detección.Esta observación implica una evaluación adicional (por ejemplo, por parte de un profesional, pagador, etc.)."

* status = #final

* category[0] = $observation-category#social-history
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"

* code = $sct#699653008 "Inadequate oral food intake for physiological needs"
* code.text = "La ingesta oral de alimentos es insuficiente para las necesidades fisiológicas"

* subject = Reference(Ejemplo-Paciente)

* effectiveDateTime = "2021-05-10T21:56:54.671Z"

* performer = Reference(Ejemplo-Prestador) "Dra Johanna Silva"

* valueBoolean = true
