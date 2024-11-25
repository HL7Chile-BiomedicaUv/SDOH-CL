Instance: Ejemplo-GrupoPacientes
InstanceOf: SDOHCCGroupCL
Usage: #example
Title: "Ejemplo SDOHCC-Grupo de pacientes SDOH"
Description: "Ejemplo de grupo para pacientes que tienen alguna condición SDOH y son miembros de una organización pagadora específica."

* active = true
* type = #person
* actual = true

* name = "Pacientes con condiciones SDOH pertenecientes a FONASA"

* characteristic[HasSDOHCondition][0].code = SDOHCCCodeSystemTemporaryCodesCL#sdoh-condition-category
* characteristic[HasSDOHCondition][=].valueReference = Reference(SDOHCCValueSetSDOHCategoryCL)
* characteristic[HasSDOHCondition][=].exclude = false

* characteristic[HasPayer][+].code = SDOHCCCodeSystemTemporaryCodesCL#payer-coverage
* characteristic[HasPayer][=].valueReference = Reference(Ejemplo-OrganizacionPagadora)
* characteristic[HasPayer][=].exclude = false
