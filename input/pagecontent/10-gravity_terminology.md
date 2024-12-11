Esta sección describe cómo se utilizan los value set en los perfiles SDOHCC.

### Enlaces adicionales para value set específicos del dominio SDOH

Los perfiles [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html), [Condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html), [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCC-ServiceRequestCL.html), [Procedimiento SDOHCC](StructureDefinition-SDOHCC-ProcedureCL.html) y [Metas/Objetivos SDOHCC](StructureDefinition-SDOHCC-GoalCL.html) tienen enlaces adicionales para *Observation.code*, *Observation.value*, *Condition.code*, *ServiceRequest.code*, *Procedure.code* y *Goal.description* respectivamente. Los enlaces adicionales son para value set específicos del dominio SDOH (por ejemplo, para inseguridad alimentaria, vivienda inadecuada, etc.) que se determinan por el valor del elemento *.category* del perfil (seleccionado del [ValueSet SDOHCC para Categoría SDOH](ValueSet-SDOHCC-ValueSetSDOHCategoryCL.html)).

#### Ejemplo de enlace adicional para el perfil de condición SDOHCC

Para el perdil de [condición de SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html), *Condition.code* tiene un enlace con [códigos de diagnósticos SNOMED y Ausente o Desconocido](https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDiagnosticosSCT) (obligatorio). Sin embargo, si *Condition.category* es "inseguridad alimentaria", *Condition.code* tienen un enlace adicional con [Food Insecurity Diagnoses](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.17/expansion).

#### Proceso de desarrollo del value set 

##### Nomenclatura de value set 
Los value set creados incluyen un término en su nombre que indica el perfil SDOHCC con el que se utilizan, de la siguiente manera:

| **El nombre del value set incluye:**  | **Used with:**                |
| ------------------------------------- | ----------------------------- |
| Diagnoses                             | [Condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html)  |
| Procedures                            | [Procedimiento SDOHCC](StructureDefinition-SDOHCC-ProcedureCL.html)  |
| Service Requests                      | [Solicitud de servicio de SDOHCC](StructureDefinition-SDOHCC-ServiceRequestCL.html)  |
| Goals                                 | [Metas/Objetivos SDOHCC](StructureDefinition-SDOHCC-GoalCL.html)  |
| Assessments                           | [Respuesta de Detección de Observación de SDOHCC](StructureDefinition-SDOHCC-ObservationScreeningResponseCL.html) |
{:.grid}

##### Pasos para la creación de un value set en VSAC

Los pasos que se indican a continuación describen el proceso general de Gravity para la creación de conjuntos de valores en VSAC. En cada paso, los ejemplos muestran el proceso para Condition.code para el perfil de [condición SDOHCC](StructureDefinition-SDOHCC-ConditionCL.html).

 
 <p>1. Se crean value sets específicos para:</p>

* Dominio SDOH (categoría): por ejemplo, inseguridad alimentaria, inseguridad en el transporte.
* Perfil - por ejemplo, Condición (Diagnóstico), Procedimientos.
* Code system – por ejemplo, ICD-10-CM, SNOMED CT, LOINC, CPT, HCPCS.

Los conjuntos de valores creados en el paso 1 no se vinculan a los elementos del perfil SDOHCC. En el paso 2, se agrupan en conjuntos de valores que se vinculan a los elementos del perfil SDOHCC.

**Ejemplo 1**: 

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
   <tr>
      <th>Nombre del value sets VSAC</th>
      <th>Dominio SDOH</th>
      <th>Vinculado al perfil</th>
      <th>Code System</th>
   </tr>
</thead>
<tbody>
   <tr>
      <td>Diagnóstico de inseguridad alimentaria ICD10CM</td>
      <td>Inseguridad alimentaria</td>
      <td>N/A</td>
      <td>ICD-10-CM</td>
   </tr>
   <tr>
      <td>Diagnóstico de inseguridad alimentaria SNOMED CT</td>
      <td>Inseguridad alimentaria</td>
      <td>N/A</td>
      <td>SNOMED CT</td>
   </tr>
   <tr>
      <td>Diagnóstico de inseguridad en el transporte ICD10CM</td>
      <td>Inseguridad en el transporte</td>
      <td>N/A</td>
      <td>ICD-10-CM</td>
   </tr>
   <tr>
      <td>Diagnóstico de inseguridad en el transporte SNOMED CT</td>
      <td>Inseguridad en el transporte</td>
      <td>N/A</td>
      <td>SNOMED CT</td>
   </tr>
   <tr>
      <td>Diagnóstico de vivienda inadecuada ICD10CM</td>
      <td>Vivienda inadecuada</td>
      <td>N/A</td>
      <td>ICD-10-CM</td>
   </tr>
   <tr>
      <td>Diagnóstico de vivienda inadecuada SNOMED CT</td>
      <td>Vivienda inadecuada</td>
      <td>N/A</td>
      <td>SNOMED CT</td>
   </tr>
   <tr>
      <td>Value sets adicionales específicos del dominio SDOH…</td>
      <td></td>
      <td></td>
      <td></td>
   </tr>
</tbody>
</table>

<p>2. Los value sets creados en el paso 1 se agrupan en conjuntos de valores que solo son específicos para:</p>

* Dominio SDOH (categoría): por ejemplo, inseguridad alimentaria, inseguridad en el transporte.
* Perfil - por ejemplo, Condición (Diagnóstico), Procedimientos.

Estos value sets se vinculan a los elementos del perfil SDOHCC a través de una tabla de vinculaciones adicionales. Por ejemplo, los value sets de la primera columna a continuación se encuentran en la tabla de vinculaciones adicionales para *Condition.code* para Condición SDOHCC.

**Ejemplo 2**:

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
   <tr>
      <th>Nombre del value sets VSAC</th>
      <th>Dominio SDOH</th>
      <th>Vinculado al perfil</th>
      <th>Contiene value sets VSAC</th>
   </tr>
</thead>
<tbody>
   <tr>
      <td>Diagnóstico de inseguridad alimentaria</td>
      <td>Inseguridad alimentaria</td>
      <td>Condición SDOHCC</td>
      <td>Diagnóstico de inseguridad alimentaria ICD10CM<br>Diagnóstico de inseguridad alimentaria SNOMED CT</td>
   </tr>
   <tr>
      <td>Diagnóstico de inseguridad en el transporte</td>
      <td>Inseguridad en el transporte</td>
      <td>Condición SDOHCC</td>
      <td>Diagnóstico de inseguridad en el transporte ICD10CM<br>Diagnóstico de inseguridad en el transporte SNOMED CT</td>
   </tr>
   <tr>
      <td>Diagnóstico de vivienda inadecuada</td>
      <td>Vivienda inadecuada</td>
      <td>Condición SDOHCC</td>
      <td>Diagnóstico de vivienda inadecuada ICD10CM<br>Diagnóstico de vivienda inadecuada SNOMED CT
</td>
   </tr>
   <tr>
      <td>Value sets adicionales específicos del dominio SDOH…</td>
      <td></td>
      <td></td>
      <td></td>
   </tr>
</tbody>
</table>

<p>3. Los conjuntos de valores creados en el paso 2 se agrupan en conjuntos de valores de agrupación SDOH que solo son específicos para:</p>

* Perfil - por ejemplo, Condición (Diagnóstico), Procedimientos.

**Example 3**:

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
   <tr>
      <th>Nombre del value sets VSAC</th>
      <th>Utilizado con perfil</th>
      <th>Contiene Value Sets VSAC</th>
   </tr>
</thead>
<tbody>
   <tr>
      <td>Determinantes sociales de las condiciones de salud</td>
      <td>Condición básica</td>
      <td>
      Diagnósticos de acceso digital<br>
      Diagnósticos de alfabetización digital<br>
      Diagnósticos de educación inferior a la secundaria<br>
      Diagnósticos de maltrato a ancianos<br>
      Diagnósticos de desempleo<br>
      Diagnósticos de inseguridad financiera<br>
      Diagnósticos de inseguridad alimentaria<br>
      Diagnósticos del estado de cobertura del seguro médico<br>
      Diagnósticos de falta de vivienda<br>
      Diagnósticos de inestabilidad de la vivienda<br>
      Diagnósticos de vivienda inadecuada<br>
      Diagnósticos de violencia de pareja<br>
      iagnósticos de dificultades materiales<br>
      Diagnósticos de carga de costos médicos<br>
      Diagnósticos de alfabetización en salud<br>
      Diagnósticos de conexión social<br>
      Diagnósticos de inseguridad en el transporte<br>
      Diagnósticos de inseguridad de los servicios públicos<br>
      

      <br>
      <b>Note</b>: Los value sets para los nuevos dominios SDOH se agregarán a medida que se creen en VSAC.</td>
   </tr>
</tbody>
</table>