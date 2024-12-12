# Desarrollo de un modelo de interoperabilidad para determinantes sociales de la salud nacional 

La OMS define los **Determinantes sociales de la salud (SDOH)** como las condiciones de los entornos donde las personas nacen, viven, aprenden, trabajan, juegan, practican su religión y envejecen, que afectan una amplia gama de resultados y riesgos en materia de salud, funcionamiento y calidad de vida, por ende, la salud no solo está determinada por la atención clínica, sino también por las condiciones sociales en las que viven las personas. 

En Chile actualmente no existe una integración de estos factores con el sistema sanitario, aunque se manejan estadísticas aisladas proporcionadas por encuestas como la [CASEN (Encuesta de caracterización socioeconómica nacional)](https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen-2022) y la [ENS (Encuesta nacional de salud)](https://epi.minsal.cl/resultados-encuestas/). Estas encuestas recopilan datos sobre diversos aspectos, como demografía, trabajo, ingresos, educación, así como enfermedades y tratamientos que atravies la población.

En Estados Unidos, [Gravity Project](https://confluence.hl7.org/display/GRAV/Project+Information) busca desarrollar y promover estándares de datos abiertos utilizando HL7 FHIR y terminologías asociadas que forman la base de la interoperabilidad en la atención social moderna. Este proyecto introduce terminologías basadas en dominios o categorías de riesgo social y desarroll una Guía de Implementación completa de derivaciones de circuito cerrado. 

A partir de la información presentada en la página del proyecto mencionada anteriormente, se identificó y desarrolló en Bizagi el diagrama del proceso, basado en la información disponible. 

{% include img-med.html img="Proceso.png" caption="Figura 1: Diagrama de procesos" %}

El presente proceso describe una metodología estructurada para integrar los SDOH en la atención clínica, asegurando una atención personalizada y efectiva.
  * **Screening**: el flujo inicia con la evaluación del paciente, en la que se identifican factores relevantes relacionados con los determinantes sociales de la salud. Esta información se recolecta a través de un formulario, cuyos datos son almacenados en sistemas electrónicos como el EHR o FHIR, permitiendo su análisis porsterior.
  * **Assessment/Diagnosis**: En esta etapa, se realiza la evaluación de los SDOH, utilizando la información recolectada para determinar si existen problemáticas que puedan impactar la salud del paciente.
      * Si no se identifican problemas, el proceso finaliza.
      * En caso de detectarse problemáticas, se procede a la siguiente etapa para abordarlas.
  * **Goal Setting**: una vez identificados los problemas, se realizan las siguientes acciones:
      * Identificación de problemáticas de salud: se detallan los factores sociales que afectan al paciente.
      * Creación de un plan de atención: se desarrolla un plan personalizado, orientado a mitigar las problemáticas identificadas.
      * Definición de metas: se establecen objetivos claros y medibles que guiarán las intervenciones.
  Un punto crítico del proceso es la evalaución de estas metas:
    * Si no se cumplen, se ajustan las estrategias y se redefine el plan.
    * Si se cumplen, el flujo avanza hacia la implementación de las intervenciones.
  * **Treatment/Interventions**: en esta fase, se ejecutan las tareas o intervenciones definidas en el plan de atención. Posteriormente, se verifica si estas acciones fueron implementados con éxito:
      * Si las intervenciones no se ejecutan de manera adecuada, se reevalúan las tareas para corregir fallas.
      * Si son exitosas, se procede a la revisión de resultados y la generación de informes que consolidan el impacto de las acciones.
El flujo culmina con la emisión de los informes finales, que documentan los resultados obtenidos.Este ciclo permite un monitoreo constante y ajustes iterativos asegurando una atención de calidad centrada en las necesidades del paciente.


## Instalación de softwares 




COMANDOS
1.- Instalar Zip y Unzip.
```
sudo apt install zip
```
1.- Instalar Git.
```
apt-get install git
```
