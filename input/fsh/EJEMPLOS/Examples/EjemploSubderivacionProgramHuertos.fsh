Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-SubderivProgramaHuertos
InstanceOf: SDOHCCServiceRequestCL
Usage: #example
Title: "Ejemplo SDOHCC-Subderivación de solicitud programa de huertos"
Description: "Ejemplo de una solicitud de servicio completada y de orden original (es decir, ejemplo de asistencia para solicitud activa a despensa de alimentos SDOHCC) que se basa en una solicitud de servicio a una organización intermedia (por ejemplo, una plataforma de coordinación), que luego creó esta solicitud de servicio (es decir, asistencia para la solicitud al programa de huertos) para ser cumplida por una organización comunitaria."

* basedOn = Reference(Ejemplo-SolServAplicacionBancoAlim)
* status = #completed
* intent = #original-order
* category[0] = $sct#410606002 "Social service procedure"
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code =  CodigoMAIFONASSA#310042010090000500 "PREDIOS AGRÍCOLAS"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)