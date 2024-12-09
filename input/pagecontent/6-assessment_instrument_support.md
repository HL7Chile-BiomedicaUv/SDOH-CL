Esta sección describe los instrumentos estandarizados de evaluación de riesgos sociales, sus beneficios y cómo estandarizar su captura, codificación y resultados aprovechando el trabajo del [Regenstrief Institute](https://www.regenstrief.org/) y la [National Library of Medicine](https://www.nlm.nih.gov/) (NLM), el [SDC Questionnaire](http://hl7.org/fhir/us/sdc/StructureDefinition/sdc-questionnaire), [SDC QuestionnaireResponse](http://hl7.org/fhir/us/sdc/StructureDefinition/sdc-questionnaireresponse), y [StructureMap](https://hl7.org/fhir/R4/structuremap.html) para automatizar la creación de instancias de [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html) y la [Condición SDOHCC](StructureDefinition-SDOHCCConditionCL.html) a partir de [SDC QuestionnaireResponse](http://hl7.org/fhir/us/sdc/StructureDefinition/sdc-questionnaireresponse).

### Introducción a los instrumentos de evaluación de atención social

Los instrumentos de evaluación de riesgos sociales se utilizan para recopilar información sobre los riesgos sociales que pueden afectar la salud y el bienestar de un individuo. La información recopilada mediante estos instrumentos puede ser utilizada por proveedores, organizaciones de salud pública y responsables de políticas para desarrollar intervenciones y programas dirigidos a abordar las causas fundamentales de las disparidades en salud y mejorar los resultados de salud para individuos y comunidades. 

Los instrumentos de evaluación encajan en el [marco conceptual](3-sdoh_clinical_care_scope.html) de SDOHCC, que ilustra cómo: 1) incorporar la detección en el proceso de atención para evaluar problemas y preocupaciones de salud. 2) Utilizar esta información para ayudar al proveedor y al paciente a establecer metas e identificar intervenciones relacionadas con los riesgos sociales para abordar metas. 3) Usar las respuestas de los instrumentos de evaluación estandarizados para impulsar el análisis de salud pública de los datos agregados de las poblaciones de pacientes. 

Esta IG se basa en los marcos existentes de FHIR para generar observaciones (por ejemplo, [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html) y condiciones (por ejemplo, [Condición SDOHCC](StructureDefinition-SDOHCCConditionCL.html) a partir de instrumentos de evaluación codificados en LOINC para su incorporación en el historial médico del paciente.

### Ventajas de los instrumentos estandarizados de evaluación de atención social

La lista de instrumentos de evaluación de los cuales se han seleccionado y validado las preguntas utilizadas se puede encontrar en el conjunto de valores denominado: [Social Determinants of Health Screening Assessments](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.126/expansion/Latest).

Las ventajas de utilizar un instrumento estandarizado de evaluación de riesgos sociales incluyen: 

* **Interoperabilidad (estructural y semántica):** La estandarización (por ejemplo, utilizando las mismas preguntas validadas y probadas, y la codificación) ayudará a garantizar que los datos sean consistentes y comparables entre estudios y poblaciones. 

* **Facilidad de uso:** Los instrumentos estandarizados de evaluación de riesgo sociales generalmente son fáciles de usar y administrar.

* **Rentabilidad:** Desarrollar (incluyendo pruebas y validación) instrumentos de evaluación personalizados consume mucho tiempo y es costoso. 

* **Mantenimiento compartido:** A medida que la investigación y las mejores prácticas evolucionan, las evaluaciones estandarizadas tienen más probabilidades de mantenerse actualizadas y reflejar las mejores prácticas actuales. 

### Representación de datos de instrumentos de evaluación mediante Code Systems estandarizados 

Los value sets específicos del dominio SDOH creados por Gravity se alojan en el National Institutes of Health (NIH) [Value Set Authority Center (VSAC)](https://vsac.nlm.nih.gov/) y se utilizan con los perfiles: [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html), [Condición SDOHCC](StructureDefinition-SDOHCCConditionCL.html), [Procedimiento SDOHCC](StructureDefinition-SDOHCCProcedureCL.html), [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCCServiceRequestCL.html) y [Metas/Objetivos SDOHCC](StructureDefinition-SDOHCCGoalCL.html).

Los instrumentos de evaluación codificados en LOINC, de los cuales se selecciona una o más preguntas (pero no necesariamente todas), se incluyen en el value set de agrupación [Social Determinants of Health Screening Assessments](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.126/expansion/Latest) establecido en VSAC. 

Las preguntas de los instrumentos de evaluación codificados en LOINC que cumplen con los criterios de evaluación se incluyen en el value sets del dominio (por ejemplo, el value sets  [Food Insecurity Screening Assessments Questions](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1196.3484/expansion/Latest)) que se utilizan con el perfil [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html). Todos los value sets específicos del dominio para las preguntas de los instrumentos de evaluación se incluyen en el value sets de agrupación [Social Determinants of Health Screening Assessments Questions](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.207/expansion/Latest) en VSAC.

### Representación de datos de instrumentos de evaluación en formato FHIR

Los implementadores deben tener un plan para presentar los datos de los instrumentos de evaluación en un formato FHIR compatible. Los recursos de [Observation](https://build.fhir.org/observation.html) y [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html) FHIR se pueden utilizar para presentar los datos capturados en un instrumento de evaluación. 

#### Representación de datos de instrumentos de evaluación mediante respuestas a cuestionarios y observaciones

[QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html) y [Observation](https://build.fhir.org/observation.html) pueden presentar datos de instrumentos de evaluación completados que se han capturado en un formato estructurado y codificado (por ejemplo, formularios electrónicos). La mejor práctica es capturar y compartir [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html) y [Observation](https://build.fhir.org/observation.html). Sin embargo, las decisiones sobre si utilizar uno o ambos recursos pueden verse influenciadas por el caso de uso y el formato de los datos estructurados que provienen de las fuentes de datos (por ejemplo, hospitales, intercambios de información de salud, redes de atención y organizaciones de información de salud calificadas). Gravity utiliza los perfiles de respuesta de detección de observaciones de [SDC QuestionnaireResponse](http://hl7.org/fhir/us/sdc/StructureDefinition/sdc-questionnaireresponse) y [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html).

##### Beneficios de utilizar QuestionnaireResponse para representar datos de instrumentos de evaluación

Los beneficios de utilizar [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html) para representar datos de instrumentos de evaluación incluyen: 

* Es más adecuado para respaldar casos de uso que requieren acceso al formato del instrumento de evaluación original.
* Siempre se basa en un [Questionnaire](https://hl7.org/fhir/R4B/questionnaire.html) FHIR y conserva la estructura y la complejidad del cuestionario para proporcionar una vista totalmente contextualizada de un cuestionario completado. Por ejemplo, QuestionnaireResponse permite capturar con precisión la versión del instrmento de evaluación, el texto exacto de las preguntas y respuestas, el orden de presentación, las opciones de respuesta de opción múltiple y si se omitieron preguntas. 
* Los pares de preguntas y respuestas en QuestionnaireResponse se pueden transformar automáticamente en observaciones FHIR utilizando [StructureMap](https://hl7.org/fhir/R4/structuremap.html) y [SDC Implementation Guide](https://build.fhir.org/ig/HL7/sdc/). 


##### Beneficios de utilizar Observation para representar datos de instrumentos de evaluación

Los beneficios de utilizar [Observation](https://build.fhir.org/observation.html) para representar pares de pregunta-respuesta individuales de un instrumento de evalaución incluyen: 

* Observation es compatible con la mayoría de los sistemas de registros médicos electrónicos y es uno de los recursos FHIR más maduros. 
* Observation es más adecuadas que QuestionnaireResponse para respaldar casos de uso que requieren consultar los datos del instrumento de evaluación. 
* Un par de pregunta-respuesta representado como una observación puede ser recuperado e intercambiado de manera independiente. 
* Observation tiene elementos de datos para representar información que no está explícitamente representada en QuestionnaireResponse. Por ejemplo: 
    * **Observation.category** puede usarse para etiquetar las observaciones por dominio SDOH (por ejemplo, Inseguridad alimentaria, Inestabilidad habitacional).
    * **Observation.interpretation** puede usarse para señalar observaciones que podrían representar una necesidad social relacionada con la salud (HRSN por sus siglas en inglés).
* Observation también puede indicar relaciones (por ejemplo, **Observation.derivedFrom**) con otros artefactos. Por ejemplo, una observación puede ser calculada o determinada en función de otras observaciones. 
* Si se necesita el contexto del instrumento de evaluación, las observaciones generadas a partir de un QuestionnaireResponse pueden usar **Observation.derivedFrom** para hacer referenia a QuestionnaireResponse.

**Tabla 1**: Orientación sobre QuestionnaireResponse (QR) y Respuesta de detección de observación (RDO).

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
   <thead>
      <tr>
         <th>Necesidad de uso</th>
         <th>QR</th>
         <th>RDO</th>
         <th>Notas de orientación</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>
            <ol>
               <li>Consulta de preguntas y respuestas discretas</li>
               <li>Cálculo de puntajes de riesgo o reglas de inferencia para Condiciones</li>
               <li>El formato original del instrumento de evaluación es importante</li>
            </ol>
         </td>
         <td>Necesario</td>
         <td>Necesario</td>
         <td>
            <ul>
               <li>Este es el escenario más común.</li>
               <li>Es posible que no sea necesario crear observaciones para todos los pares de pregunta-respuesta.
               </li>
            </ul>
         </td>
      </tr>
      <tr>
         <td>
            <ol>
               <li>Consulta de preguntas y respuestas directas</li>
               <li>Cálculo de puntajes de riesgo o reglas de inferencia para crear Condiciones</li>
               <li>El formato original del instrumento de evaluación no es importante</li>
            </ol>
         </td>
         <td>No Necesario</td>
         <td>Necesario</td>
         <td>
            <ul>
               <li>La consulta y el cálculo son mucho más fáciles con Observation que con QuestionnaireResponse.</li>
               <li>Puede ser necesario determinar qué pares de pregunta-respuesta representar como observaciones (por ejemplo, la utilidad de representar un par de pregunta-respuesta como una observación puede ser determinada por el caso de uso del implementador.)
               </li>
            </ul>
         </td>
      </tr>
      <tr>
         <td>
            <ol>
               <li>El formato original del instrumento de evaluación es importante</li>
               <li>Sin necesidad de consultas, cálculos, etc.
               </li>
            </ol>
         </td>
         <td>Necesario</td>
         <td>No Necesario</td>
         <td>
            <ul>
               <li>Esta es una necesidad de uso poco probable.</li>
               <li>Es muy probable que en el futuro se necesiten consultas o cálculos, por lo que resulta ventajoso crear también observaciones, incluso si no se necesitan actualmente.
               </li>
            </ul>
         </td>
      </tr>
   </tbody>
</table>

#### Orientación adicional sobre el cuestionario y las respuestas al cuestionario

[StructureMap](https://hl7.org/fhir/R4/structuremap.html) es una plantilla (no específica para un individuo) que, al igual que [QuestionnaireResponse](https://hl7.org/fhir/R4B/questionnaireresponse.html), es una representación precisa de un instrumento de evaluación.

QuestionnaireResponse incluye las respuestas de una persona y siempre hace referencia a un [StructureMap](https://hl7.org/fhir/R4/structuremap.html) a través de QuestionnaireResponse.questionnaire. Esta IG utiliza el perfil [SDC QuestionnaireResponse] que hace referencia al [SDC Base Questionnaire](https://build.fhir.org/ig/HL7/sdc/StructureDefinition-sdc-questionnaire.html#root).

En la Tabla 2 a continuación se proporciona orientación sobre Questionnaire.code y Questionnaire.item para varios escenarios de formas en que los implementadores pueden componer instrumentos de evalaución. 

**Tabla 2**: Orientación sobre los elementos del cuestionario según composición del instrumento de evaluación.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
   <tr>
      <th>Composición del instrumento de evaluación (qué incluye)</th>
      <th>Ejemplo</th>
      <th>Guía para el cuestionario</th>
   </tr>
</thead>
<tbody>
   <tr>
      <td><b>Instrumento de evalaución estandarizado</b>: Instrumento de evaluación único (codificado en LOINC) en su totalidad. Este instrumento de evalaución está codificado en LOINC y todas las preguntas y respuestas están codificadas en LOINC.</td>
      <td>Herramienta de evalaución de HRSN de AHC (Preguntas básicas)</td>
      <td>Questionnaire.code es el código LOINC para el instrumento de evaluación estandarizado. Questionnaire.item(s) son códigos LOINC para todas las preguntas del instrumento de evaluación etsandarizado.</td>
   </tr>
   <tr>
      <td><b>Instrumento de evaluación no estandarizado con preguntas estandarizadas</b>: Este instrumento de evaluación combina preguntas de uno o más instrumentos de evalaución estandarizados.<u>Este instrumento de evaluación no esta codificado en LOINC</u>,pero todas sus preguntas y respuestas están codificadas en LOINC.</td>
      <td>Herramienta de evaluación de HRSN de AHC (Preguntas principales) + preguntas seleccionadas de las preguntas complementarias de HRSN de AHC</td>
      <td>Questionnaire.code es un código no LOINC (por ejemplo, local) ya que el instrumento de evaluación no está codificado en LOINC. Questionnaire.item(s) son los códigos LOINC para las preguntas (de los instrumentos de evaluación estandarizados) que se han combinado en un instrumento no estandarizado.</td>
   </tr>
   <tr>
      <td><b>Instrumento de evaluación no estandarizado con preguntas estandarizadas y no estandarizadas</b>: Este instrumento de evaluación combina preguntas de un instrumento de evaluación estandarizado con algunas preguntas no codificadas en LOINC <u>Este instrumento de evalaución no está codificado en LOINC.</u> Algunas preguntas y respuestas están codificadas en LOINC.<u>SAlgunas preguntas y respuestas no están codificadas en LOINC.</u></td>
      <td>Herramienta de detección de HRSN de AHC (Preguntas básicas) + preguntas seleccionadas no codificadas en LOINC (por ejemplo, locales)</td>
      <td>Questionnaire.code es un código no LOINC (por ejemplo, local) ya que el instrumento de evaluación no está codificado en LOINC. Questionnaire.item(s) son los códigos LOINC (para las preguntas del instrumento de evaluación estandarizado) y los códigos no LOINC (por ejemplo, local) para las preguntas que no provienen de un instrumento estandarizado codificado en LOINC.</td>
   </tr>
</tbody>
</table>

#### Orientación adicional sobre los elementos de Respuesta de Detección de observación de SDOHCC

Esta sección proporciona orientación sobre Observation.category y Observation.interpretation en el contexto de su uso en el perfil [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html). 

##### Categorización de observaciones por dominio(s) SDOH utilizando Observation.category

Observation.category tiene dos códigos de categoría fijos (survey y social-history) para indicar que un par de pregunta-respuesta capturado como una observación representa una evaluación (encuesta) relacionada con la historia social.

Además, Observtaion.category tiene un enlace con [ValueSet SDOHCC para Categoría SDOH]((StructureDefinition-SDOHCCValueSetSDOHCategoryCL.html)), que tiene valores para categorizar una observación por dominio(s) SDOH (por ejemplo, inseguridad alimentaria, insetabilidad de la vivienda, etc.).

Como orientación adicional relacionada a la categoría Observation para [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html): 
* "Observation.category: dominio SDOH" (por ejemplo, inseguridad alimentaria) significa que la observación aborda una necesidad social relacionada con la salud (HRSN) en el dominio SDOH especificado. 
*Observation.category: dominio SDOH" no significa que la observación confirma un HRSN en el dominio SDOH especificado. 
* A algunas observaciones se les puede asignar un solo valor para Observation.category (de [ValueSet SDOHCC para Categoría SDOH](StructureDefinition-SDOHCCValueSetSDOHCategoryCL.html) mientras que a otras se les puede asignar más de un valor. 
* Al categorizar una observación que representa un par de pregunta-respuesta, Gravity recomienda que los dominios SDOH se asignen en función de la pregunta <u>y su conjunto completo de respuestas permitidas</u> en un instrumento de evaluación.

##### Marcar observaciones para una posible necesidad de HRSN mediante Observation.interpretation

Observation.interpretation: [POS](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html#v3-ObservationInterpretation-POS) (Positivo) se puede utilizar para marcar observaciones para las cuales el par pregunta-respuesta podría representar un HRSN.

Orientación adicional relacionada con la interpretación de la observación para [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html): 

* El significado de Observation.interpretation:  [POS](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html#v3-ObservationInterpretation-POS) debe evaluarse junto con "Observation.category: dominio SDOH". Si el autor de un instrumento de evaluación proporciona orientación sobre si un par de pregunta-respuesta específico podría representar una HRSN, Observation.interpretation: [POS](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html#v3-ObservationInterpretation-POS) se puede utilizar para señalar la necesidad de seguimiento por parte de un proveedor o un profesional de la salud calificado para evaluar más a fondo una HRSN en el dominio SDOH especificado por Observation.category.

* No se recomienda utilizar Observation.interpretation:[NEG](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html) (Negativo). Los instrumentos de evaluación generalmente están diseñados de modo que ciertas respuestas indiquen una posible HRSN. Los autores de los instrumentos de evaluación generalmente no indican que ciertos pares de pregunta-respuesta descarten una HRSN. 

* Cuando una respuesta (Observation.value) no indica una posible HRSN, se debe omitir Observation.interpretation.

#### Uso de Observation como método de detección de respuesta a las observaciones grupales

Además de representar instancias de observación, la [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html) se puede utilizar como una agrupación de observación para hacer referencia (a través de Observation.member) a las instancias de respuesta de detección de observación que resultan de que un individuo complete un instrumento de evaluación. 

Si se ha creado un QuestionnaireResponse para el instrumento de evaluación, la agrupación de observaciones, si bien no está prohibida, generalmente es redundante, ya que Observation.member puede hacer referencia directamente a QuestionnaireResponse (a través de derivedFrom) para el contexto del instrumento de evaluación. 

La agrupación de observaciones es más útil cuando no se ha creado una respuesta al cuestionario. Para varias de las formas comunes en que los implementadores pueden componer instrumetnos de evalaución, la Tabla 3 proporciona orientación para Observation.code y Observation.member para una agrupación de observaciones. 

**Tabla 3**: Orientación sobre la agrupación de observaciones en función de la composición del instrumento de evalaución

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
   <tbody>
      <tr>
         <td>
         <strong>Composición del instrumento de evaluación </strong><strong>(qué comprende)</strong>
         </td>
         <td>
            <strong>Ejemplo</strong>
         </td>
         <td>
            <strong>Recomendaciones para la agrupación de respuestas de detección de observación</strong>
         </td>
      </tr>
      <tr>
         <td>
            <p><strong>Instrumento de evaluación estandarizado:</strong> Se trata de un instrumento de evalaución único (codificado en LOINC) en su totalidad.</p>
            <p>Este instrumento de evalaución está codificado en LOINC, y todas las preguntas y respuestas están codificadas en LOINC.</p>
         </td>
         <td>
            Herramienta de evalaución de HRSN de AHC (Preguntas básicas)
         </td>
         <td>
            <ol>
               <li>Observation.code es el código LOINC (panel code) para el instrumento de evaluación.</li>
               <li>Observation.member hace referencia a todas las observaciones generadas a partir del instrumento de evaluación.</li>
               <li>Todas las observaciones de los miembros tienen códigos LOINC para Observation.code y Observation.value (cuando corresponda).</li>
            </ol>
         </td>
      </tr>
      <tr>
         <td>
            <p><strong>Instrumento de evalaución no estandarizado con preguntas estandarizadas:</strong>Este instrumento de evaluación combina preguntas de uno o más instrumentos de evalaución estandarizados.</p>
            <p>Este isntrumento de evalaución no está codificado con códigos LOINC, pero todas sus preguntas y respuestas están codificadas con códigos LOINC.</p>
         </td>
         <td>
            Herramienta de evaluación de HRSN de AHC (Preguntas principales) + preguntas seleccionadas de las preguntas complementarias de HRSN de AHC
         </td>
         <td>
            <ol>
               <li>Observation.code es un código que no es LOINC (por ejemplo, local) ya que el instrumento de evaluación no está representado por LOINC.</li>
               <li>Observation.member hace referencia a todas las observaciones generadas a partir del instrumento de evaluación. Todas las observaciones de los miembros tienen códigos LOINC para Observation.code y Observation.value (cuando corresponda).</li>
            </ol>
         </td>
      </tr>
      <tr>
         <td>
            <p><strong>Instrumento de evaluación no estandarizado con preguntas estandarizadas y no estandarizadas</strong>: este instrumento de evalaución combina preguntas de un instrumento de evaluación estandarizado con algunas preguntas no codificadas por LOINC.</p>
            <p>Este instrumento de evaluación no está codificado en LOINC, Algunas preguntas y respuestas están codificadas en LOINC. Algunas preguntas y respuestas no están codificadas en LOINC.</p>
         </td>
         <td>
            AHerramienta de evaluación de HRSN de AHC (Preguntas básicas) + preguntas seleccionadas no codificadas en LOINC (por ejemplo, locales)         </td>
         <td>
            <ol>
               <li>Observation.code es un código que no es LOINC (por ejemplo, local) ya que el instrumento de evaluación no está representado en LOINC.</li>
               <li>Observation.member hace referencia a todas las observaciones generadas a partir del instrumento de evaluación. Algunas observaciones miembro tienen un código LOINC para Observation.code y Observation.value.</li>
            </ol>
         </td>
      </tr>
   </tbody>
</table>

### Uso de StructureMap para geenrar observaciones o condiciones a partir de QuestionnaireResponse

Esta IG ha adoptado el enfoque basado en mapas utilizando el recurso FHIR [StructureMap](https://hl7.org/fhir/R4/structuremap.html) para definir y compartir reglas para generar condiciones de observación (problemas de salud no confirmados) a partir de QuestionnaireResponse.

Lo ideal sería que en el futuro el administrador de cuestionarios pudiera proporcionar una instancia de StructureMap para un instrumento de evaluación estandarizado a fin de garantizar la coherencia de las observaciones y condiciones (es decir, problemas de salud no confirmados) generados a partir de ese instrumento de evalaución. Un repositorio de StructureMaps revisados y mantenidos de forma centralizada podría ayudar significativamente a promover la interoperabilidad semántica y estructural de los instrumentos de evalaución estandarizados, así como a reducir la carga para los proveedores y los implementadores.

#### Uso de StructureMap para generar observaciones

Esta IG admite el uso de StructureMap de SDC para generar instancias de [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-(SDOHCCObservationScreeninigResponseCL).html) a partir de QuestionnaireResponse. Al usar StructureMap para generar observaciones a partir de QuestionnaireResponse, las reglas para alinear los pares de preguntas y respuestas de un QuestionnaireResponse con Observation.code y Observation.value generalmente son sencillas. Las reglas adicionales, como las reglas para asignar Observation.category o Observation.interpretation a un par pregunta-respuesta, pueden ser más complejas y, lo ideal, es que se determinen con la participación de los autores del instrumento de evalaución. 

#### Uso de StructureMap para generar condiciones

Esta IG también admite el uso de StructureMap para generar condiciones (preocupaciones de salud no confirmadas) para algunos pares de preguntas y respuestas a partir de QuestionnaireResponse. Aplicar reglas a los pares de preguntas y respuestas, o comnbinaciones de pares de preguntas y respuestas, para generar condiciones puede ser complejo. 

Antes de usar SDC StructureMap para generar condiciones a partir de QuestionnaireResponse, los implementadores deben definir un proceso claro para 1) si esto se llevará a cabo, 2) las reglas para generar una condición a partir de un par de preguntas y respuestas (o pares) y 3) la verificación por parte de un proveedor o profesional de la salud calificado. 

**Nota:** Independientemente de si las condiciones (preocupaciones de salud no confirmadas) se generan según las pautas proporcionadas por los autores del isntrumento de evaluación, los recursos de codificación o StructureMaps "verificados", la documentación de HRSNs basada en instrumentos de evalaución debe ser verificada por un miembro del equipo de atención a través de interacción personal con la persona que etsá siendo evaluada. 

#### Orientacióntécnica detallada adicional para StructureMap

Los ejemplos de recursos de StructureMap en esta IG se generan utilizando [FHIR Mapping Language]({{site.data.fhir.path}}mapping-language.html). Este lenguaje se utiliza luego para generar las instancias de StructureMap. La creación de los mapas en un lenguaje textual es mucho más sencilla que intentar elaborar las instancias de StructureMap directamente en XML o JSON. El lenguaje de mapeo también funciona independientemente de la sintaxis utilizada para el QuestionnaireResponse, es decir, funciona igual para instancias en JSON,XML y RDF.

Las instrucciones y tutoriales sobre cómo usar [FHIR Mapping Language]({{site.data.fhir.path}}mapping-language.html) para convertir y transformar recursos se encuentra [aquí](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Mapping+Language). Esta página también incluye referencias a implementaciones de código abierto existentes que son capaces de compilar instancias del lenguaje de mapeo  en StructureMap de FHIR, así como de "ejecutar" los mapas, es decir, convertir un QuestionnaireResponse en un Bundle de transacción de otros recursos. Se recomienda a los implementadores aprovechar una de estas implementaciones comunitarias existentes en lugar de crear la suya propia. Esto ahorrará trabajo y minimizará la probabilidad de introducir errores específicos de implementación en el proceso de transformación. 

Por lo tanto, el proceso general para admitir este proceso de transformación es el siguiente: 

1. Identificar el Questionnaire que se utilizará para recopilar información relacionada con SDOH.
2. Determinar qué recursos de Observación y Condición deben crearse para que se puedan buscar dentro del registro.
3. Utilizando los ejemplos proporcionados en esta guía como base, crear un archivo de lenguaje de mapeo que realice l atransformación necesaria. 
4. Compilar el archivo de mapeo en una instancia de StructureMap (por ejemplo, utilizando la herramienta de validación FHIR Java).
5. Ejecutar el mapa contra un QuestionnaireResponse.
6. Ejecutar el Bundle de transacción resultante para crear las Observaciones y Condiciones relevantes en el servidor deseado. 
7. Probar el mapa completando el Questionnaire y validar las Observaciones y Condiciones resultantes. 

Tenga en cuenta que la creación del archivo de mapeo y la compilación de StructureMap solo necesita realizarse una vez por Questionnaire. 

### Proceso de Implementación de Instrumentos de Evaluación

En resumen, a continuación se resume el proceso seguido por esta IG para la implementación de los instrumentos de evaluación. El proceso también se puede aplicar a otros instrumentos de evalaución. 

* **Utilice un instrumento de evalaución codificado en LOINC:** los [Componentes LOINC](https://loinc.org/kb/faq/structure/) y las listas de [Respuestas LOINC](https://loinc.org/forums/topic/answer-lists/) estandarizan la codificación y facilitan el aprovechamiento del widget de código abierto NLM [LHC-Forms Widget](https://lhcforms.nlm.nih.gov/lhcforms). 
* **Convertir el instrumento de evalaución codificado en LOINC a un Cuestionario SDC:**  El widget de código abierto NLM [LHC-Forms Widget](https://lhcforms.nlm.nih.gov/lhcforms) admite este paso al mostrar formularios de entrada basados en el cuestionario FHIR para aplicaciones basadas en la web y puede utilizarse para crear y editar cuestionarios FHIR. Para algunos instrumentos de evaluación, este paso puede incluir el establecimiento de lógica de cálculo para definir el resultado de algunas preguntas en función de las respuestas a otras preguntas (por ejemplo, cuando una o más preguntas determinan la respuesta a otra "pregunta" (no directamente respondida por el paciente), como en la pregunta 3 del cuestionario HSV).
* **Instancia de [SDC Questionnaire]:** Usando una aplicación apropiada (por ejemplo, la aplicación SMART de código abierto NLM [FHIR SDC SMART App](https://lhcforms.nlm.nih.gov/sdc), crear un [SDC QuestionnaireResponse].

* **Desarrollar la lógica de traducción para usar [StructureMap](https://hl7.org/fhir/R4/structuremap.html)** (esta lógica generalmente debe ser proporcionada por el responsable del instrumento de evaluación) y una herramienta de validación para generar las siguientes instancias de recursos a partir del QuestionnaireResponse SDC: 
    * [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html)- Para representar un par de preguntas y respuestas del instrumento de evaluación. Cualquier observación que se produzca DEBERÁ incluir un enlace de derivación (derivedFrom) al QuestionnaireResponse. Algunos sistemas pueden optar por representar todos los pares depreguntas y respuestas como observaciones, mientras que otros pueden no encontrar esto útil y considerar que crea "ruido" en la historia clínica electrónica.
        * ¿Es un puntaje u otra medida clave que pueda determinar si se registra un problema en el registro del paciente?
        * ¿Es algo que un proveedor probablemente buscaría o para lo que podría querer seguir tendencias?
        * ¿Es necesario como parte del cálculo de una medida?
    * [Condición SDOHCC](StructureDefinition-SDOHCCConditionCL.html)- Para representar cualquier preocupación de salud identificada por el instrumento de evalaución. Estas son condiciones (preocupaciones de salud no confirmadas) que deben ser verificadas por un miembro del equipo de atención mediante interacción personal con la persona que está siendo evaluada. 
    * [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCCObservationScreeninigResponseCL.html) Grupo - Para agrupar cualquier observación asociada con el instrumento de evalaución. Cabe señalar que, para las observaciones que pueden hacer referencia a un QuestionnaireResponse (como en este proceso), esto generalmente es redundante pero no está prohibido. 







