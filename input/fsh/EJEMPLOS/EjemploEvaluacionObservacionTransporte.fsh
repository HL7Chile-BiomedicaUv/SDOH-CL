Alias: $sct = http://snomed.info/sct

Instance: SDOHCC-EjemploObservacionEvaluacionTransporte
InstanceOf: ObservacionCL
Usage: #example
Title: "Ejemplo de evaluación de la observación de SDOHCC sobre transporte con alto costo"
Description: "Ejemplo de una observación de transporte que no se deriva necesariamente de una encuesta de detección.Esta observación implica una evaluación adicional.Este ejemplo también incluye una categoría de observación (es decir,inseguridad en el transporte) que está incluida en \"ValueSet SDOHCC Categoría SDOH\".Además,se incluye una subcategoría de inseguridad en el transporte (es decir, inseguridad financiera en el transporte) para ilustrar que es posible subcategorizar aún más un código de \"ValueSet SDOHCC Categoría SDOH\" con un código que no está en el ValueSet."

* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ObservationAssessmentCL"
* status = #final
* category[0] = $observation-category#social-history
* category[+].coding[0] = SDOHCCCodeSystemTemporaryCodesCL#transportation-insecurity "Inseguridad en el transporte"
* category[=].coding[+] = SDOHCCCodeSystemTemporaryCodesCL#financial-insecurity "Inseguridad financiera"
* code = $sct#160695008 "Transport too expensive"
* code.text = "El transporte es muy caro"
* subject = Reference(Patient/EjemploRecursoPaciente) "María Martínez"
* effectiveDateTime = "2021-05-10T21:56:54.671Z"
* performer = Reference(Practitioner/SDOHCC-EjemploPrestadorDraJohannaSilva) "Dra. Johanna Silva"
* valueBoolean = true