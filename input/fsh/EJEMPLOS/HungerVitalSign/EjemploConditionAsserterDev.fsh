Alias: $conditionclinical-n = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $conditionverstatus-n = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://hl7.org/fhir/us/core/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $icd-10-cm = http://hl7.org/fhir/sid/icd-10-cm

Instance: Ejemplo-DispositivoConfirmacion
InstanceOf: $CoreDiagnosticoCL
Usage: #example
Title: "Ejemplo Dispositivo de confirmación de condiciones"
Description: "Ejemplo de una condición de inseguridad alimentaria que hace referencia, como evidencia a las observaciones derivadas del cuestionario Hunger Vital Sign y utiliza una extensión de Condition.asserter para hacer referencia al dispositivo de software que utiliza las respuestas a las preguntas 1 y 2 del HVS para derivar la respuesta a la pregunta 3 del HVS (en riesgo de inseguridad alimentaria)."

* extension.url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionConditionAsserterCL"
* extension.valueReference = Reference(Ejemplo-DeviceSoftware) "Application program software"
* clinicalStatus = $conditionclinical-n#active "Active"
* verificationStatus = $conditionverstatus-n#unconfirmed "Unconfirmed"
* category[0] = $condition-category#health-concern "Health Concern"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code.coding[0] = $sct#733423003 "Food insecurity"
* code.coding[+] = $icd-10-cm#Z59.4 "Lack of adequate food"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* onsetPeriod.start = "2019-08-18T12:31:35.123Z"
* evidence.detail = Reference(Ejemplo-RespuestaObsPreg3Hunger)