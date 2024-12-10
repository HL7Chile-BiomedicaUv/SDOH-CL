### Objetivo

Condición SDOHCC está generalmente destinada a representar una preocupación, problema o diagnóstico de salud relacionado con un riesgo o necesidad social. Condición SDOHCC puede derivarse de las observaciones de respuesta de detección (por ejemplo, [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html)) u otras observaciones realizadas como parte de una evaluación durante un encuentro clínico (por ejemplo, [Evaluación de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationAssessmentCL.html)). Condición SDOHCC puede abordarse mediante una ([Metas/Objetivos SDOHCC](StructureDefinition-SDOHCC-GoalCL.html)) o ser la razón para una [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCC-ServiceRequestCL.html) o un [Procedimiento SDOHCC](StructureDefinition-SDOHCC-ProcedureCL.html). Consulte el [Marco de modelado de datos](3-sdoh_clinical_care_scope.html#marco-de-modelado-de-datos) para obtener más detalles sobre las relaciones entre la condición SDOHCC y los otros perfiles de esta guía de implementación.

### Uso

El atributo *Condition.code* tiene una vinculación obligatoria con el conjunto de condiciones de [códigos de diagnósticos SNOMED y Ausente o Desconocido](https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDiagnosticosSCT). Además,*Condition.code* cuenta con vinculaciones adicionales a value sets de los dominios de SDOH (por ejemplo, Inseguridad alimentaria), que se determinan según el valor seleccionado para *Condition.category*. Cuando *Condition.category* corresponde a un valor del [ValueSet SDOHCC para Categoría SDOH](ValueSet-SDOHCC-ValueSetSDOHCategoryCL.html) (por ejemplo, food-insecitity (Inseguridad alimentaria)), entonces *Condition.code* DEBE seleccionarse de los value sets específicos del dominio correspondiente que se encuentra en enlaces adicionales (es decir, [Diagnósticos de Inseguridad alimentaria](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.17/expansion)). Si se selecciona más de un valor del [ValueSet SDOHCC para Categoría SDOH](ValueSet-SDOHCC-ValueSetSDOHCategoryCL.html) (por ejemplo, food-insecurity y financial-insecurity (inseguridad alimentaria e inseguridad financiera)) para *Condition.category*, entonces *Condition.code* DEBE seleccionarse de al menos uno de los value sets específicos del dominio correspondientes encontrados en los enlaces adicionales [Diagnósticos de Inseguridad alimentaria](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.17/expansion).

Algunos dominios de SDOH pueden no estar representados en el [ValueSet SDOHCC para Categoría SDOH](ValueSet-SDOHCC-ValueSetSDOHCategoryCL.html). En este caso, se puede usar: [sdoh-category-unspecified](CodeSystem-SDOHCC-CodeSystemTemporaryCodesCL.html#SDOHCC-CodeSystemTemporaryCodesCL-sdoh-category-unspecified) para categorizar la instancia de *Condition* como relacionada con SDOH. Si se desea, también se puede usar *category.text* para especificar más detalladamente el dominio. 

{% include markdown-link-references.md %}





