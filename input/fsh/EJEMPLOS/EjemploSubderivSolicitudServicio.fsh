Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-SubderivSolicitudServProgramaAlimentos
InstanceOf: SDOHCCServiceRequestCL
Usage: #example
Title: "Eejmplo SDOHCC-Subderivación de solicitud de servicio del programa de alimentos de verano"

* basedOn = Reference(Ejemplo-SolServAplicacionBancoAlim)
* status = #completed
* intent = #original-order
* category[0] = $sct#410606002 "Social service procedure"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = CodigoMAIFONASSA#309042000000000100 "III  CONTROL DE ALIMENTOS"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)
