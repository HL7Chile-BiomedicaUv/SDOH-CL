Profile: SDOHCCHealthcareServiceCL
Parent: HealthcareService
Id: SDOHCC-HealthcareServiceCL
Title: "Servicio de salud SDOHCC"
Description: "Perfil que describe los medios por los cuales se puede contactar un servicio de salud."

* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* active 1.. MS
* active = true (exactly)

* location only Reference(SDOHCCLocationCL)
* location MS
* location ^requirements = "La ubicación debe incluir Location.address para que el paciente conozca las direcciones potenciales al reservar una cita."

* name 1.. MS

* telecom ^slicing.discriminator.type = #exists
* telecom ^slicing.discriminator.path = "extension('http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ExtensionHealthcareServiceTelecomAppointment')"
* telecom ^slicing.rules = #open
* telecom ^mustSupport = false
* telecom contains AppointmentContact 1..* MS
* telecom[AppointmentContact].extension contains SDOHCCExtensionHealthcareServiceTelecomAppointmentCL named ForAppointment 1..1 MS
* telecom[AppointmentContact].system 1.. MS
* telecom[AppointmentContact].value 1.. MS

* communication MS

* appointmentRequired MS

* availableTime MS

* notAvailable MS

* availabilityExceptions MS