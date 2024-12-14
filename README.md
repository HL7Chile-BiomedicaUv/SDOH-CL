# Desarrollo de un modelo de interoperabilidad para determinantes sociales de la salud nacional 

La OMS define los **Determinantes sociales de la salud (SDOH)** como las condiciones de los entornos donde las personas nacen, viven, aprenden, trabajan, juegan, practican su religión y envejecen, que afectan una amplia gama de resultados y riesgos en materia de salud, funcionamiento y calidad de vida, por ende, la salud no solo está determinada por la atención clínica, sino también por las condiciones sociales en las que viven las personas. 

En Chile actualmente no existe una integración de estos factores con el sistema sanitario, aunque se manejan estadísticas aisladas proporcionadas por encuestas como la [CASEN](https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen-2022) (Encuesta de caracterización socioeconómica nacional) y la [ENS](https://epi.minsal.cl/resultados-encuestas/) (Encuesta nacional de salud). Estas encuestas recopilan datos sobre diversos aspectos, como demografía, trabajo, ingresos, educación, así como enfermedades y tratamientos que atravies la población.

En Estados Unidos, [Gravity Project](https://confluence.hl7.org/display/GRAV/Project+Information) busca desarrollar y promover estándares de datos abiertos utilizando HL7 FHIR y terminologías asociadas que forman la base de la interoperabilidad en la atención social moderna. Este proyecto introduce terminologías basadas en dominios o categorías de riesgo social y desarrolló una [Guía de Implementación completa](https://hl7.org/fhir/uv/subscriptions-backport/STU1.1/index.html) de derivaciones de circuito cerrado. 

A partir de la información presentada en la página del proyecto mencionada anteriormente, se identificó y desarrolló en Bizagi el diagrama del proceso, basado en la información disponible. 

<img src="input/imagesReadme/Proceso.png" title="Diagrama de procesos" width="600" />

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

Al tratarse de una guía de implementación CORE, no fue necesario desarrollar el modelado ni flujo de datos correspondiente, ya que estos elementos no forman parte del alcance establecido. Del mismo modo, tampoco se consideró necesario el desarrollo de casos de uso, dado que la guía se enfoca en proporcionar lineamientos generales. 

## Construcción Guía de Implementación
En este apartado se describen los programas y metodología empleada para el desarrollo de la guía de implementación. El propósito es proporcionar una visión clara y estructurada sobre los enfoques adoptados, las herramientas utilizadas y los procesos seguidos para garantizar la coherencia, eficacia y aplicabilidad de la guía, facilitando la replicabilidad y la adptación del contenido, asegurando su utilidad práctica para los usuarios. 

### INSTALACIÓN DE SOFTWARES 
**IMPORTANTE:** Toda la intalación descrita debe ser en modo administrador.

#### 1. **Instalación Visual Studio Code**: 

Este es un editor de código fuente ligero y multiplataforma. Su proceso de instalación comprende los siguientes pasos:
  * Accede al sitio oficial de [Visual Studio Code](https://code.visualstudio.com/)
  *  Hacer clic en el botón **Download** según el sistema operativo.

   *Para Windows*:
     * Una vez descargado el instalador (VSCodeSetup.exe), ábralo.
     * Acepte términos de licencia y seleccione las siguientes opciones:
         * Crear un acceso directo en el escritorio.
         * Añadir VS Code al menú contextual o al PATH (opción recomendada para usar la terminal)
         * Haz clic en **Instalar** y espere que el proceso finalice.
         * Una vez completada la instalación, haga clic en **finalizar** para abrir el panel.
         * Al abrir Visual Studio Code, se debe instlar la extensión de Git.
Con esto, Visual Studio Code está listo para comenzar.

#### 2. Instalación "Java jdk": 
**Java Development Kit (JDK)** es un conjunto de herramientas escenciales para desarrollar, compilar, depurar y ejecutar aplicaciones en el lenguaje de programación Java. 
Para descargar: 
 * Visita el sitio de descarga de [Oracle](https://www.oracle.com/cl/java/technologies/downloads/).
 * Selecciona la versión de JDK adecuada para el sistema operativo. 
 * Acepta los términos de la licencia y descarga el instalador. 
 * Sigue las instrucciones de instalación para configurarlo en tu sistema.

#### 3. SUSHI :
SUSHI es una implementación de referencia y un estándar de *facto* para un compilador FSH que traduce FSH en artefactos FHIR como perfiles, extensiones y vale sets.

 - **Paso 1:** SUSHI requiere *Node.js*, para instalar diríjase a [Node JS](https://nodejs.org/en) y seleccione la descarga "LTS". Una vez descargado el instalador, ejecútelo utilizando las opciones predeterminadas.
Para asegurar una instalación correcta, abra una ventana de comandos y escriba los siguientes comandos, cada uno debe devolver un número de versión.

 ```
 node --version
 npm --version
 ```

 - **Paso 2:** Para instalar SUSHI, abra un símbolo del sistema y escriba el siguiente comando:

 ```
 npm install -g fsh-sushi
 ```
 Para verificar la instalación utilice: 

 ```
 sushi help
 ```
 Si el comando genera instrucciones sobre el uso de la interfaz de línea de comandos de SUSHI, está listo para ejecutar SUSHI. 
  Se utiliza *sushi -v* para mostrar la versión instalada de SUSHI y la versión de la especificación FSH que admite.

 - **Paso 3:** como herramientas de publicación se debe instalar Ruby Jekyll, la información se encuentra disponible en  [Jekyll](https://jekyllrb.com/docs/installation/windows/), y para realizar la descarga e instalación ingrese a [RubyInstaller](https://rubyinstaller.org/).
 **Nota:** Se recomienda instalar con las 3 opciones, una tras otra.
 Finalmente en una ventana de comandos escriba:
   ```
   gem install jekyll bundler
   ```

**RECOMENDACIÓN:**
Agregar "java" en las variables de entorno siguiendo los siguientes puntos:
 * Busque y ábra variables de entorno en su buscador de Windows.
 * Seleccione "variables de entorno".
 * En la ventana que se abrirá "Variables del sistema" seleccione "PATH" Y luego presione el botón "EDITAR".
 * En una nueva ventana emergente, seleccione el botón "EXAMINAR".
 * Busque la ruta donde se instala java (./java/bin) y seleccione "Variables de usuario" y seleccione el botón "Nuevo".
 * Finalmente cree una variable JAVA_HOME y busque la carpera correspondiente. 


### CREACIÓN DE LA GUÍA
Para crear la estructura de directorios necesaria para el desarrollo de esta guía de implementación, se utilizó el comando *sushi init* tras haber instalado los programas previamente mencionados. Este comando generó la estructura base del proyecto. La organización inicial se basó en la guía de implementación [SDOH Clinical Care](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/), estableciendo ademaás una dependencia con la guía [CL Core](https://hl7chile.cl/fhir/ig/clcore/1.9.1/index.html). Ambas guías proporcionaron una estructura que fue analizada y comparada para diseñar perfiles necesarios de manera adecuada. 

Para desarrollar los perfiles presentados en la guía de implementación *SDOH Clinical Care* en una primera instancia se desarrolló: 

**1. Value Sets**
Los value sets se emplean para definir terminologías relacionadas con los determinantes sociales de la salud, incluyendo conceptos clínicos como necesidades, intervenciones, resultados y otros datos relevantes. Estos value sets garantizan la estandarización en la captura y el intercambio de infromación, permitiendo la interoperabilidad entre diferentes sistemas de salud. 

| Value Sest Gravity | Value Sets GI nacional |
| ------------------ | ---------------------- |
| SDOHCC ValueSet LOINC SNOMEDCT | ValueSet SDOHCC LOINC-SNOMEDCT |
| SDOHCC ValueSet Observation Status | Valueset SDOHCC Estado de observación |
| SDOHCC ValueSet SDOH Category | ValueSet SDOHCC para Categoría SDOH |
| SDOHCC ValueSet SDOH Questionnaire Category | ValueSet SDOHCC para Categoría Cuestionario SDOH |
| SDOHCC ValueSet Referral Task Status | ValueSet SDOHCC para el Estado de la Tarea de Derivación |
| SDOHCC ValueSet Task Code | ValueSet SDOHCC para el Código de Tarea |
| SDOHCC ValueSet Task Priority | ValueSet SDOHCC para Prioridad de Tarea |
| SDOHCC ValueSet Task Status | ValueSet SDOHCC para Estado de la Tarea |
| --------------------------- | Códigos de procedimientos CL |

**Inclusión de Value sets nacionales:** En el desarrollo de la guía de implementación nacional se añadió un nuevo value set denominado *"Códigos de procedimientos Cl"*. Este está diseñado para trabajar con los procedimientos definidos por FONASA, asegurando que los códigos sean compatibles con el contexto y las normativas específicas de nuestro país. 

**2. Code Systems:** 
Los code systems contienen todos los términos disponibles dentro de un dominio específico; en este caso, están relacionados con los determinantes sociales de la salud. Estos sitemas permiten estandarizar la terminología utilizada en los recursos FHIR, asegurando interoperabilidad y consistencia en la captura e intercambio de datos.

| Code System Gravity | Code System GI nacional |
| ------------------ | ------------------------ |
| SDOHCC CodeSystem Temporary Codes | SDOHCC Código del Sistema de Códigos Temporales |
|------------------- | Código MAI de FONASA |

**Inclusión de Code System nacional:** en el desarrollo de esta GI se añadió un code system denominado *Código MAI de Fonasa*, el cual contiene códigos personalizados relacionados con los procedimientos realizados en chile. Este sistema se basa en la clasificación establecida por FONASA, adaptando la terminología internacional a las necesidades del contexto nacional. 



#### Creación de Perfiles:
Garvity propone un total de 12 perfiles, los cuales se muestran en la siguiente imagen. 

<div style="text-align: center;">
  <img src="input/imagesReadme/Perfiles.png" title="Perfiles propuestos por Gravity" width="600">
</div>

De estos 12 perfiles, cuatro se desarrollaron en base a perfiles desarrollados en la guía de implementación  [CL Core](https://hl7chile.cl/fhir/ig/clcore/1.9.1/index.html) y ocho se desarrollaron en base al estándar FHIR R4, tal como se muestra en la siguiente tabla.

| Perfil | Base |
| ------ | ---- |
| Condition | [Diagnostico CL](https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-CoreDiagnosticoCl.html) |
| Consent | [Consent](https://hl7.org/fhir/R4/consent.html) |
| Goal | [Goal](http://hl7.org/fhir/R4/goal.html) |
| Group | [Group](https://hl7.org/fhir/R4/group.html) |
| Healthcare Service | [Healthcare Service](https://hl7.org/fhir/R4/healthcareservice.html) |
| Location | [localización CL](https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-CoreLocalizacionCl.html)
| Observation Assessment| [Observación CL](https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-CoreObservacionCL.html) |
| Observation Screening Response | [Observación CL](https://hl7chile.cl/fhir/ig/clcore/1.9.1/StructureDefinition-CoreObservacionCL.html) |
| Procedure | [Procedure](https://hl7.org/fhir/R4/procedure.html) |
| ServiceRequest | [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) |
| Task for patient | [Task](https://hl7.org/fhir/R4/task.html) |
| Task for referral management | [Task](https://hl7.org/fhir/R4/task.html) |

Al momento de realizar la programación de los perfiles 






