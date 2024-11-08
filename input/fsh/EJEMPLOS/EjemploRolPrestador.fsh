Alias: $CSEspecialidadesDeisCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL

Instance: Ejemplo-RolPrestador
InstanceOf: CoreRolClinicoCl
Usage: #definition
Title: "Ejemplo SDOHCC-Rol clínico"
Description: "Ejemplo de de un rol clínico. Este ejemplo se utiliza como rol clínico de referencia en otros ejemplos de esta IG."

* active = true
* practitioner = Reference(Ejemplo-Prestador) "Johanna Silva"
* organization = Reference(Ejemplo-Organizacionprestadora) "Centro de Salud Familiar Arauco"
* specialty = $CSEspecialidadesDeisCL#28 "Medicina Familiar"
* specialty.text = "Medicina Familiar"
