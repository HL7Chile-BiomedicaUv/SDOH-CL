Alias: $CoreOrganizacionCl = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl

Profile: SDOHCCGroupCL
Parent: Group
Id: SDOHCC-GroupCL
Title: "Grupo SDOHCC"
Description: "Perfil para identificar grupos de pacientes que tienen una condición de Determinantes Sociales de la Salud (SDOH) y son miembros de una organización pagadora específica."

* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Grupo de pacientes de SDOH para un pagador." //Pagador: ISAPRE-FONASA-CUALQUIER OTRO SISTEMA
* . ^definition = "Para la consolidación de individuos que comparten un conjunto común de características (como el mismo pagador y cualquier condición en las categorías SDOH especificadas),con el fin de facilitar a las organizaciones, que cuenten con los permisos adecuados,la recuperación sencilla de información relacionada con la cohorte de personas por las que tienen una responsabilidad compartida."

* active 1..
* active = true (exactly)

* type = #person (exactly)
* type ^short = "person"
* type ^definition = "Identifica que se trata de un grupo de personas."
* type ^requirements = "Para este caso de uso de IG, esto solo se utilizará para un grupo de personas."

* actual = true (exactly)
* actual ^requirements = "Se refiere únicamente a un grupo específico de individuos reales."

* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic contains
    HasSDOHCondition 1..1 MS and
    HasPayer 1..1 MS
* characteristic[HasSDOHCondition] ^requirements = "Para identificar a los miembros que tienen una instancia activa de una condición con cualquier Condition.category en el valu set referenciado por Group.characteristic.value[x] (es decir,condiciones SDOH)."
* characteristic[HasSDOHCondition].code = SDOHCCCodeSystemTemporaryCodesCL#sdoh-condition-category
* characteristic[HasSDOHCondition].code MS
* characteristic[HasSDOHCondition].value[x] only Reference(ValueSet)
* characteristic[HasSDOHCondition].value[x] = Reference(SDOHCCValueSetSDOHCategoryCL)
* characteristic[HasSDOHCondition].value[x] MS
* characteristic[HasSDOHCondition].exclude = false (exactly)
* characteristic[HasSDOHCondition].exclude MS
* characteristic[HasSDOHCondition].period ..0
* characteristic[HasPayer] ^definition = "Identifica rasgos cuya presencia o ausencia es compartida por los miembros del grupo."
* characteristic[HasPayer] ^requirements = "Para identificar a los miembros que están cubiertos por un pagador referenciado en Group.characteristic.value[x]."
* characteristic[HasPayer].code = SDOHCCCodeSystemTemporaryCodesCL#payer-coverage
* characteristic[HasPayer].code MS
* characteristic[HasPayer].value[x] only Reference($CoreOrganizacionCl)
* characteristic[HasPayer].value[x] MS
* characteristic[HasPayer].exclude = false (exactly)
* characteristic[HasPayer].exclude MS
* characteristic[HasPayer].period ..0

* member MS
* member.entity MS
