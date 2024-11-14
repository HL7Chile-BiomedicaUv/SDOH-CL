Alias: $goal-achievement = http://terminology.hl7.org/CodeSystem/goal-achievement
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

Instance: Ejemplo-MetaSegAlimentaria
InstanceOf: SDOHCCGoalCL 
Usage: #example
Title: "Ejemplo SDOHCC-Meta sobre seguridad alimentaria"
Description: "Ejemplo de una meta de seguridad alimentaria que aborda una condición de inseguridad alimentaria."

* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving "Improving"
* category = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* description = $sct#1078229009 "Food security"
* description.text = "Seguridad alimentaria"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* target.measure = $loinc#88124-3 "Food insecurity risk [HVS]"
* target.detailCodeableConcept = $loinc#LA19983-8 "No risk"
* target.dueDate = "2020-12-10"
* statusDate = "2020-10-21"
* addresses = Reference(Ejemplo-CondicionInsAlimentaria)