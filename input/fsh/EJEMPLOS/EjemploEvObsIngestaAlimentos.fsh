Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-EvObsIngestaAlimentos
InstanceOf: SDOHCCObservacionAssessmentCL
Usage: #example
Title: "Ejemplo SDOHCC-Evaluación de observación de ingesta alimentaria"
Description: "Ejemplo de una observación de ingesta alimentaria inadecuada que no necesariamente proviene únicamente de una encuesta de evalaución. Esta observación implica una evaluación adicional (por ejemplo, realizada por un profesional, aseguradora, etc.)."

* status = #final

* category[SocialHistory][0] = $observation-category#social-history 
* category[SDOH][+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"

* code = $sct#2492009 
* subject = Reference(Ejemplo-Paciente) "María Díaz"

* effectiveDateTime = "2021-05-10T21:56:54.671Z"
* performer = Reference(Ejemplo-Prestador) "Dra Jhonna Silva"
* valueBoolean = true