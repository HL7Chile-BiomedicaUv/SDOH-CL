Alias: $condition-clinicalnw = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-statusnw = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-categorynw = http://hl7.org/fhir/us/core/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $icd-10-cm = http://hl7.org/fhir/sid/icd-10-cm

Instance: Ejemplo-CondicionDesempleo
InstanceOf: SDOHCCConditionCL
Usage: #example
Title: "Ejemplo SDOHCC-Condición de desempleo"
Description: "Ejemplo de una condición (una preocupación de salud) basada en una observación relacionada con el estado laboral que se deriva de una respuesta a un cuestionario PRAPARE (representada en LOINC)."

* clinicalStatus = $condition-clinicalnw#active "Active"
* verificationStatus = $condition-ver-statusnw#unconfirmed "Unconfirmed"
* category[0] = $condition-categorynw#health-concern "Health Concern"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#employment-status "Estado laboral"
* code.coding[0] = $sct#73438004 "Unemployed"
* code.coding[+] = $icd-10-cm#Z56.0 "Unemployment, unspecified"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* onsetPeriod.start = "2021-04-26T13:56:33.747Z"
* asserter = Reference(Ejemplo-Paciente) "María Díaz"
* evidence.detail = Reference(Ejemplo-RespuestaCuestionarioPRAPARE)