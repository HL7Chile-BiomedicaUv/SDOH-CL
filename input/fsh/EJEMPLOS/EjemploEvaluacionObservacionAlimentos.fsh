Alias: $sct = http://snomed.info/sct

Instance: SDOHCC-EjemploObservacionEvaluacionIngestaInadecuadaAlimentos
InstanceOf: Observation
Usage: #example
Title: "Ejemplo de evaluación de la observación de SDOHCC sobre ingesta inadecuada de alimentos"
Description: "Ejemplo de una observación de ingesta de alientos inadecuada que no necesariamente proviene únicamente de una encuesta de detección. Esta observación implica una evaluación adicional (por ejemplo, por parte de un médico, nutricionista,etc.)."

* meta.profile = "https://hl7chile.cl/fhir/ig/gravitycl/StructureDefinition/SDOHCC-ObservationAssessmentCL"
* status = #final
* category[0] = $observation-category#social-history
* category[+] = SDOHCCCodeSystemTemporaryCodesCL#food-insecurity "Inseguridad alimentaria"
* code = $sct#699653008 "Inadequate oral food intake for physiological needs"
* code.text = "Ingesta oral inadecuada de alimentos para las necesidades fisiológicas"
* subject = Reference(Patient/EjemploRecursoPaciente) "María Martínez"
* effectiveDateTime = "2021-05-10T21:56:54.671Z"
* performer = Reference(Practitioner/SDOHCC-EjemploPrestadorDraJohannaSilva) "Dra. Johanna Silva"
* valueBoolean = true

