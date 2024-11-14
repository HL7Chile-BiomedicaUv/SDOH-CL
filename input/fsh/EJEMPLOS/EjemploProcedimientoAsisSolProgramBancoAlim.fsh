Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-ProcedAsistSolicitudProgramBancoAlim
InstanceOf: SDOHCCProcedureCL
Usage: #example
Title: "Ejemplo SDOHCC-Procedimiento para asistencia en la solicitud al programa de banco de alimentos"
Description: "Ejemplo de un procedimiento completado para asistencia en la solicitud a un banco de alimentos, basado en una solicitud de servicio y que menciona como motivo una condición de inseguridad alimentaria."


* basedOn = Reference(Ejemplo-SolServAplicacionBancoAlim)
* status = #completed
* category.coding[0] = $sct#410606002 "Social service procedure"
* category.coding[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = $sct#467771000124109 "Assistance with application for food pantry program"
* code.text = "Asistencia con la solicitud para el programa de banco de alimentos."
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* performedDateTime = "2020-09-16"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)