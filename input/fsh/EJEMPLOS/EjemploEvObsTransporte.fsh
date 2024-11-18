Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-EvObsTransporte
InstanceOf: SDOHCCObservacionAssessmentCL
Usage: #example
Title: "Ejemplo SDOHCC-Evaluación de observación del transporte demasiado costoso"
Description: "Ejemplo de una observación sobre transporte que no necesariamente se deriva únicamente de una encuesta de detección. Esta observación implica una evaluación adicional (por ejemplo, por parte de un profesional, pagador,etc.). Este ejemplo también incluye un Observation.category (es decir, Inseguridad en el Transporte) que está incluida en el \"Value set SDOHCC para Categoría SDOH\". Además, se incluye una subcategoría de Inseguridad en el transporte (es decir, Inseguridad Financiera en el Transporte)."

* status = #final

* category[SocialHistory][0] = $observation-category#social-history 
* category[SDOH][+].coding[0] = SDOHCCCodeSystemTemporaryCodesCL#transportation-insecurity "Inseguridad en el transporte"
* category[SDOH][+].coding[+] = SDOHCCCodeSystemTemporaryCodesCL#financial-insecurity "Inseguridad financiera"

* code = $sct#160695008 "Transport too expensive"
* code.text = "El transporte es demasiado caro"

* subject = Reference(Ejemplo-Paciente) "María Díaz"

* effectiveDateTime = "2021-05-10T21:56:54.671Z"
* performer = Reference(Ejemplo-Prestador) "Dra Jhonna Silva"
* valueBoolean = true