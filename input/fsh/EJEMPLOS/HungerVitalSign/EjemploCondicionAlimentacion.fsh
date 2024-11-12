Alias: $conditionclinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $conditionverstatus = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://hl7.org/fhir/us/core/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $icd-10-cm = http://hl7.org/fhir/sid/icd-10-cm

Instance: Ejemplo-CondicionInsAlimentaria
InstanceOf: $CoreDiagnosticoCL
Usage: #example
Title: "Ejemplo SDOHCC-Condición de Inseguridad alimentaria"
Description: "Ejemplo de una condición de inseguridad alimentaria (una preocupación de salud) que hace referencia, como evidencia, a las observaciones derivadas del cuestionario Hunger Vital Sign de LOINC."

* clinicalStatus = $conditionclinical#active "Active"
* verificationStatus = $conditionverstatus#unconfirmed "Unconfirmed"
* category[0] = $condition-category#health-concern "Health Concern"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code.coding[0] = $sct#733423003 "Food insecurity"
* code.coding[+] = $icd-10-cm#Z59.4 "Lack of adequate food"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* onsetPeriod.start = "2019-08-18T12:31:35.123Z"
* evidence.detail = Reference(Ejemplo-RespuestaObsPreg3Hunger)