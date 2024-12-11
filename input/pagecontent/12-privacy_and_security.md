### Privacidad y consentimiento del paciente

Se reconoce la necesidad de gestionar adecuadamente la privacidad y el consentimiento relacionados con los problemas de riesgo social de un paciente. Esta IG asume que cada organización tiene mecanismos adecuados para proteger la información sobre SDOH y solo la divulgará con el consentimiento correspondiente.

El intercambio de datos con las CBO y CP debe realizarse de conformidad con los requisitos Ley de Protección de la Vida Privada (Ley N°19.628). Los CBO y CP solo deben estar autorizados a acceder a los datos de los apcientes con los que tienen una relación, y el acceso a los datos de cada paciente está restringido a aquellos elementos de datos necesarios para la tarea de derivación, como se describe en la sección [Autorización y control de acceso]({{site.data.fhir.path}}security.html#binding) de Seguridad de FHIR.

El consentimiento se referencia indirectamente (a través de ServiceRequest) desde la [tarea de SDOHCC para la gestión de derivaciones](StructureDefinition-SDOHCC-TaskForReferralManagementCL.html) que se intercambia como parte de la derivación, y el destinatario de la derivación puede recuperarlo a través de consultas FHIR. Estas relaciones se muestran en el [marco de modelado de datos](3-sdoh_clinical_care_scope.html#marco-de-modelado-de-datos).

### Estatutos, reglamentos y principios rectores

Todas las implementaciones de la Guía de implementación de Atención clínica de SDOH FHIR (IG)

* **DEBE** cumplir con todos los estatutos y regulaciones federales y estatales vigentes con respecto a seguridad y privacidad.
* **DEBE** tilizar los estándares técnicos aplicables requeridos por las regulaciones actuales publicadas por CMS y ONC (permitiendo el uso voluntario a través del [Proceso de Avance de Versión de Estándares (SVAP)](https://www.healthit.gov/isa/standards-version-advancement-process#:~:text=ONC%20has%20established%20the%20voluntary,of%20Certification%20requirement%20(%C2%A7%20170.405))) a menos que se haya otorgado una excepción.
* **DEBE** apoyar el consentimiento del paciente/miembro y/o el tratamiento de información confidencial de conformidad con los estatutos y regulaciones federales y estatales.
* **DEBERÍAN** respaldar las políticas de consentimiento e intercambio de datos de los socios comerciales involucrados en el intercambio que sean más protectoras siempre que las políticas sean consistentes con los estatutos y regulaciones federales y estatales o más restrictivas.

### Guía de implementación y seguridad de FHIR

Todas las implementaciones de la Guía de Implementación (IG) de FHIR de Atención clínica de SDOH **DEBEN** seguir la guía de seguridad de FHIR y la guía de seguridad del implementador de FHIR según se define en la especificación de FHIR relevante cuando corresponda y no sea reemplazada por esta sección o requisitos IG específicos. 

La especificación de seguridad FHIR proporciona orientación relacionada con la seguridad de las comunicaciones, la autenticación, el control de acceso y autorización, la auditoría, las firmas digitales, los archivos adjuntos, las etiquetas, la narrativa y la validación de entradas. La especificación de seguridad de FHIR está disponible [aquí]({{site.data.fhir.path}}safety.html).

### Tecnologías relacionadas con la seguridad y la privacidad, incluido el consentimiento explícito y las etiquetas de seguridad

Actualmente no existe ningún requisito reglamentario explícito para el uso de estas tecnologías.

Sin embargo, para cumplir con los estatutos, reglamentos y principios rectores anteriores, se PUEDEN considerar y utilizar directivas de consentimiento y etiquetas de seguridad.

Las organizaciones que planean aprovechar estas capacidades adicionales son responsables de negociar el respaldo para estos mecanismos entre los socios comerciales. La guía de implementación de FHIR que define el estándar recomendado es la Guía de implementación [de FHIR sobre segmentación de datos para privacidad](http://hl7.org/fhir/uv/security-label-ds4p/).

### Información adicional protegida

Además, la información protegida puede incluir elementos definidos por estatutos y reglamentos federales (por ejemplo, 42 CFR Parte 2) y estatales (por ejemplo, muchos estados protegen los trastornos por abuso de sustancias, los registros de diagnóstico y tratamiento del VIH, la divulgación de información sobre menores; tenga en cuenta que esta no es una lista exhaustiva). Además, las organizaciones pueden brindar protección adicional para tipos específicos de información que se consideran sensibles para el individuo (por ejemplo, información sobre SDOH). Se aplican las siguientes pautas a menos que un estatuto o reglamento dicte lo contrario:

Cuando lo permita la ley y de acuerdo con los requisitos legales y, cuando corresponda, con el consentimiento de la persona, SIEMPRE se respaldará la divulgación de información protegida adicional . La divulgación de información sin una solicitud explícita del paciente/miembro **DEBERÁ** basarse en la política de la organización, de conformidad con las reglamentaciones federales y estatales. Algunos ejemplos son las solicitudes legales de información y “romper el cristal” para tratar a un paciente que no puede dar su consentimiento. 