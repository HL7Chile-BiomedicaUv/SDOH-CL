Alias: $condition-clinical-n = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status-n = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $sct = http://snomed.info/sct
Alias: $condition-category = http://hl7.org/fhir/us/core/CodeSystem/condition-category

Instance: SDOHCC-EjemploCondicionDesempleo
InstanceOf: Condition
Usage: #example
* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ConditionCL"
* clinicalStatus = $condition-clinical-n#active "Active"
* clinicalStatus.text = "Activo"
* verificationStatus = $condition-ver-status-n#confirmed "Confirmed"
* verificationStatus.text = "Confirmado"
* category[0] = $condition-category#health-concern "Health Concern"
* category[=].text = "Preocupación por la salud"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#employment-status "Estado laboral"
* code.coding[0] = $sct#73438004 "Unemployed"
* code.text = "Desempleada"
* subject = Reference(Patient/EjemploRecursoPaciente) "María Martínez"
* onsetPeriod.start = "2021-04-26T13:56:33.747Z"
* asserter = Reference(Patient/EjemploRecursoPaciente) 
//* evidence.detail = Reference(Observation/SDOHCC-ObservationResponsePRAPAREEmploymentStatusExample)