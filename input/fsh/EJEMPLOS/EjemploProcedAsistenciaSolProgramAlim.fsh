Instance: Ejemplo-AsistenciaSolicitudProgramAlimentos
InstanceOf: SDOHCCServiceRequestCL
Usage: #example
Title: "Ejemplo SDOHCC-Procedimeinto de asistencia para la solicitud al programa de alimentos de verano"
Description: "Ejemplo de un procedimiento completado para la asistencia en la solicitud a un programa de alimnentos de verano basado en una solicitud de servicio y que hace referencia, como su razón, a una condición de inseguridad alimentaria."

* basedOn = Reference(Ejemplo-SubderivProgramaHuertos)
* status = #completed
* intent = #orden
* category.coding[0] = $sct#410606002 "Social service procedure"
* category.coding[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = CodigoMAIFONASSA#309042000000000100 "III  CONTROL DE ALIMENTOS"
* subject = Reference(Ejemplo-Paciente) "María Díaz"
* reasonReference = Reference(Ejemplo-CondicionInsAlimentaria)