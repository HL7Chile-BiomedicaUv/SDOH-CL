Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-SubderivSolicitudServProgramaAlimentos
InstanceOf: SDOHCCServiceRequestCL
Usage: #example
Title: "Eejmplo SDOHCC-Subderivación de solicitud de servicio del programa de alimentos de verano"
Description: "ejemplo de una solicitud de servicio original completada (es decir, ejemplo de solicitud de servicio de SDOHCC para asistencia de despensa de alimentos activa) que se basa en una solicitud de servicio a una organización intermediaria (por ejemplo, una plataforma de coordinación) que luego creó esta solicitud de servicio (es decir, asistencia con la solicitud para el programa de servicio de alimentos de verano) para que la cumpla una organización comunitaria."

* basedOn = Reference(Ejemplo-SolServAplicacionBancoAlim)
* status = #completed
* intent = #original-order
* category[0] = $sct#410606002 "Social service procedure"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = CodigoMAIFONASSA#309042000000000100 "III  CONTROL DE ALIMENTOS"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)
