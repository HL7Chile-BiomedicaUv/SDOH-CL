Instance: SDOHCC-EjemploGrupoPacientesSDOHparaPagador
InstanceOf: Group
Usage: #example
Title: "Ejemplo SDOHCC-Pacientes de un grupo SDOH para un pagador"
Description: "Un ejemplo de grupo para pacientes que tienen alguna condición SDOH y son miembros de una organización pagadora específica."

* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-GroupCL"
* active = true
* type = #person
* actual = true
* name = "Pacientes con condiciones SDOH del pagador FONASA"
* characteristic[0].code = SDOHCCCodeSystemTemporaryCodesCL#sdoh-condition-category
* characteristic[=].valueReference = Reference(SDOHCCValueSetSDOHCategoryCL)
* characteristic[=].exclude = false
* characteristic[+].code = SDOHCCCodeSystemTemporaryCodesCL#payer-coverage
* characteristic[=].valueReference = Reference(Organization/SDOHCC-PagadordelaOrganizacion)
* characteristic[=].exclude = false
