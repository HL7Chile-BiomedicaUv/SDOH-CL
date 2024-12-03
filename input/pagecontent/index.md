### Descripción general

Los determinantes sociales de la salud (SDOH por su sigla en inglés) se definen como las condiciones de los entornos donde las personas nacen, viven, aprenden, trabajan, juegan, practican su religión y envejecen, que afectan una amplia gama de resultados y riesgos en materia de salud, funcionamiento y calidad de vida[^1]. Por lo tanto, la salud de las personas no solo está influenciada por la atención clínica, sino también por las condiciones sociales en las que viven. Así cada vez se reconoce más su importancia como factores escenciales que influyen en los resultados de la atención sanitaria. Esta Guía de Implementación (IG) establece los lineamientos para intercambiar contenido codificado utilizando el estándar HL7 FHIR, enfocado en las actividades de atención centradas en los Determinantes Sociales de la Salud (SDOH). Estas actividades incluyen la detección, evaluación y diagnóstico clínico, el establecimeinto de objetivos, así como la planificación y realización de intervenciones. La IG aborda la necesidad de recopilar información sobre los SDOH en diversos entornos, facilitando su intercambio entre las partes interesadas y permitiendo la transferencia de referencias entre organizaciones para abordar necesidades y riesgos sociales específicos, todo ello con el consentimiento adecuado del paciente. Además, demuestra cómo compartir datos clínicos para respaldar fines secundarios, tales como la salud de la población, la calidad y la investigación. 

{% include img-med.html img="marcoconceptual.png" caption="Figura 1: Marco conceptual para la atención clínica de SDOH" %}

La IG admite los siguientes casos de uso: 

*  **Documentación de SDOH en la atención médica:** Integrar los determinantes sociales de la salud en los registros de los encuentros de los pacientes con proveedores de salud, pagadores y servicios comunitarios en Chile, utilizando plataformas como la Historia Clínica Electrónica y promoviendo la interoperabilidad entre los sistemas públicos y privados de salud. 
* **Derivación electrónica para atender necesidades de SDOH:** Implementar un flujo de trabajo electrónico que facilite la derivación de pacientes para atender necesidades sociales, optimizando la coordinación entre atención médica y servicios sociales, con seguimiento adecuado y retroalimentación entre las partes involucradas, incluyendo la conexión con organizaciones intermediarias y el compromiso directo con pacientes y cuidadores.
* **Identificación de cohortes de pacientes vinculados a una entidad común:** Crear cohortes de pacientes que comparten características comunes, como pertenecer al mismo pagador (FONASA o ISAPRE), para permitir intervenciones dirigidas a mejorar la salud de grupos vulnerables o expuestos a condiciones sociales similares, utilizando datos disponibles en los sistemas de salud pública y privada de Chile. 

El desarrollo de esta IG se basa en lo implementado por el proyecto “Gravity Project”. Por ende, la implementación de  la homologación de la IG “SDOH Clinical Care” en Chile tiene como objetivo obtener y analizar los determinantes sociales de la salud mediante la recolección de datos clínicos y sociales de los pacientes. Esto se logrará a través de la definición del proceso y el modelamiento de la integración de datos, con el propósito de mejorar la comprensión y el manejo de los factores que influyen en la salud. Esta iniciativa  permitirá identificar los riesgos sociales de los pacientes de manera oportuna y facilitar la interoperabilidad de la información entre sistemas. De este modo los proveedores de salud podrán personalizar los tratamientos y recomendaciones considerando no solo los síntomas clínicos, sino también el contexto social de cada paciente.

### Dependencias de otras IG

| Guía de Implementación | Versión | Dependencia |
| ---------------------- | ------- | ----------- |
| [CL Core](https://hl7chile.cl/fhir/ig/clcore/1.9.1/) | 1.9.1 | Cuando sea posible, todos los perfiles en esta IG están ya sea derivados de CL Core 1.9.1 o alineados con esa versión y con futuras versiones en la medida de lo posible. |
| [Structured Document Capture (SDC)](http://hl7.org/fhir/uv/sdc/)| 3.0.0  | SDC es la base para mapear las respuestas de los cuestionarios a observaciones y condiciones. SDC también ofrece orientación sobre cómo se pueden crear cuestionarios con soporte para el cálculo de puntajes, comportamiento condicional, expectativas específicas de renderización, entre otros.   |
| [SDOH Clinical Care](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/index.html)| 2.2.0  |  Los elementos de esta IG se basan en la estructura definida en la guía SDOH Clinical Care.  |
{:.grid}

### Perfiles

{% include globals-table.xhtml %}

### Analisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}

### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}




-----------------------------------------------------------------------------------------------------
[^1]: [Healthy People 2030](https://health.gov/healthypeople/priority-areas/social-determinants-health)

{% include markdown-link-references.md %}