Alias: $CSEspecialidadesDeisCL = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL

Instance: EjemploRoldelpracticante
InstanceOf: PractitionerRole
Usage: #example
Title: "Ejemplo SDOHCC-Rol del prestador, Dra.Johanna Silva"
Description: "Ejemplo del rol médico. Este ejemplo se utiliza como rol de médico al que se hace referencia en otros ejemplos de la IG."

* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl"
* active = true
* practitioner = Reference(Practitioner/SDOHCC-EjemploPrestadorDraJohannaSilva) "Dra. Johanna Silva"
* organization = Reference(Organization/OrganizacionClEjemplo1.1) "Hospital Dr. Gustavo Fricke" //CAMBIAR POR ORGANIZATION CLINIC
* specialty = $CSEspecialidadesDeisCL#28 "Medicina Familiar"
* specialty.text = "Medicina Familiar"
* telecom[0].system = #phone
* telecom[=].value = "950278977"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "johanna.silva@centromedico.cl"
* telecom[=].use = #work