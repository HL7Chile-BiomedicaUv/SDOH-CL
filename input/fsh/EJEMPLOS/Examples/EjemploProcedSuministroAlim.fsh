Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-ProcedimientoSuministroAlim
InstanceOf: SDOHCCProcedureCL
Usage: #example
Title: "Ejemplo SDOHCC-Procedimiento para el suministro de alimentos"
Description: "Ejemplo de un procedimiento completado para el suministro de alimentos"

* status = #completed
* category.coding[0] = $sct#410606002 "Social service procedure"
* category.coding[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = CodigoMAIFONASSA#312142020100000500 "TRANSPORTE DE PERSONAS CON SERVICIO DE ALIMENTACIÓN"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* performedDateTime = "2020-11-16"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)
