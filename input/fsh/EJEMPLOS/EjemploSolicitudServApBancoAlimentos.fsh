Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-SolServAplicacionBancoAlim
InstanceOf: SDOHCCServiceRequestCL
Usage: #example
Title: "Ejemplo SDOHCC-Solicitud de servicio para asistencia en la aplicación a un banco de alimentos"
Description: "Ejemplo de una solicitud de servicio activa para una asistencia en la aplicación a un banco de alimentos que menciona como motivo una condición de inseguridad alimentaria."

* status = #active
* intent = #order
* category[0] = $sct#410606002 "Social service procedure"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = $sct#467771000124109 "Assistance with application for food pantry program"
* code.text = "Asistencia con la solicitud para el programa de banco de alimentos."
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)
