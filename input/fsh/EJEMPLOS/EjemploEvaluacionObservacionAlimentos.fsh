Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-EvaluacionObservacionAlimentos
InstanceOf: SDOHCCObservacionAssessmentCL
Usage: #example
Title: "Ejemplo SDOHCC-Evaluación de observación de ingesta inadecuada de alimentos"
Description: "Ejemplo de una ingesta inadecuada de alimentos corresponde a una observación que no necesariamente proviene únicamente de una encuesta de detección. Esta observación implica una evaluación adicional (por ejemplo,por parte de un prestador, pagador, etc.)."

* status = #final

* category[0] = $observation-category#social-history
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"

* code = $sct#699653008 "Inadequate oral food intake for physiological needs"
* code.text = "La ingesta oral de alimentos es inadecuada para las necesidades fisiológicas."

* subject = Reference(Ejemplo-Paciente) "María Díaz"

* effectiveDateTime = "2021-05-10T21:56:54.671Z"
* performer = Reference(Ejemplo-Prestador) "Dra Johanna Silva"
* valueBoolean = true