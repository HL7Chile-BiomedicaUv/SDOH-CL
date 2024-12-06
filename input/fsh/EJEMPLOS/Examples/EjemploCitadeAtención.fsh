Instance: Ejemplo-CitadeAtencion
InstanceOf: SDOHCCHealthcareServiceCL
Usage: #example
Title: "Ejemplo SDOHCC-Cita de servicio de atención con telecomunicación"
Description: "Ejemplo de un servicio de atención médica con telecomunicaciones que se puede utilizar para marcar una cita. Este ejemplo se utiliza como servicio de atención médica al que se hace referencia en otros ejemplos de esta IG."

* active = true

* name = "Centro de atención Familiar"

* telecom[AppointmentContact].system = #phone
* telecom[AppointmentContact].value = "+56 9 87654321"

* telecom[AppointmentContact].extension[ForAppointment].url = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointmentCL"
* telecom[AppointmentContact].extension[ForAppointment].valueBoolean = true