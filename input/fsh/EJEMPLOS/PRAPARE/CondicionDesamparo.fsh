Alias: $condition-clinicalnew = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-statusnew = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-categorynew = http://hl7.org/fhir/us/core/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $icd-10-cm = http://hl7.org/fhir/sid/icd-10-cm

Instance: Ejemplo-CondicionDeDesamparo
InstanceOf: SDOHCCConditionCL
Usage: #example
Title: "Ejemplo SDOHCC-Condición de desamparo"
Description: "Ejemplo de una coondición de desamparo (una preocupación de salud) basada en una observación relacionada con el estado de vivienda que se deriva de una respuesta al cuestionario PRAPARE."

* clinicalStatus = $condition-clinicalnew#active "Active"
* verificationStatus = $condition-ver-statusnew#unconfirmed "Unconfirmed"
* category[0] = $condition-categorynew#health-concern "Health Concern"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#homelessness "Personas sin hogar"
* code.coding[0] = $sct#32911000 "Homeless"
* code.coding[+] = $icd-10-cm#Z59.0 "Homelessness"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* onsetPeriod.start = "2021-04-26T13:56:33.747Z"
* asserter = Reference(Ejemplo-Paciente) "María Díaz"
* evidence.detail = Reference(Ejemplo-RespuestaObsEstadoVivienda)