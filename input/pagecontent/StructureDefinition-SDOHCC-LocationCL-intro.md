### Objetivo

Ubicación de SDOHCC proporciona la dirección de un servicio de salud al que se refiere un sujeto de atención. Cuando un sujeto de atención es referido a un servicio de salud, [Tarea SDOHCC para el paciente](StructureDefinition-SDOHCC-TaskForPatientCL.html) (a través de *Task.input*) hace referencia a [Servicio de salud SDOHCC](StructureDefinition-SDOHCC-HealthcareServiceCL.html), el cual (a través de *HealthcareService.location*) hace referencia a la [Ubicación de SDOHCC](StructureDefinition-SDOHCC-LocationCL.html), que requiere *Location.address*.

{% include markdown-link-references.md %}


