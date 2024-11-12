Alias: $sct = http://snomed.info/sct

Instance: Ejemplo-DeviceSoftware
InstanceOf: Device
Usage: #example
Title: "Ejemplo SDOHCC-Dispositivo software"
Description: "Ejemplo de un dispositivo de software. Este ejemplo se utiliza como el dispositivo de referencia en otros ejemplos de SDOHCC."

* identifier.system = "http://software.org/devices/id"
* identifier.value = "345675"
* type = $sct#706689003 "Application program software"
* type.text = "Software de aplicación"