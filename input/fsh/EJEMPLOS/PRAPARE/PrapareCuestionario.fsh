Alias: $loinc = http://loinc.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: Ejemplo-CuestionarioPRAPARE
InstanceOf: Questionnaire
Usage: #example
Title: "Cuestionario SDOHCC PRAPARE"
Description: "Instancia de cuestionario que representa las preguntas y respuestas del cuestionario PRAPARE representadas en LOINC (código 93025-5)" 

* name = "Cuestionario SDOHCC PRAPARE"
* title = "Cuestionario SDOHCC PRAPARE"
* status = #draft
* subjectType = #Patient
* date = "2021-04-01T04:01:34+00:00"

//PREGUNTAS
* item.linkId = "/93025-5"
* item.code = $loinc#93025-5 "Protocol for Responding to and Assessing Patients' Assets, Risks, and Experiences [PRAPARE]"
* item.text = "Protocolo para responder y evaluar los activos, riesgos y experiencias de los pacientes [PRAPARE]"
* item.type = #group
* item.required = false


* item.item[0].linkId = "/93043-8"
* item.item[=].code = $loinc#93043-8 "Personal characteristics [PRAPARE]"
* item.item[=].text = "Características personales"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


//* item.item[=].item[=].linkId = "/93043-8/56051-6"
//* item.item[=].item[=].code = $loinc#56051-6 "Hispanic or Latino"
//* item.item[=].item[=].text = "Hispano o Latino"
//* item.item[=].item[=].type = #choice
//* item.item[=].item[=].required = false
//* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
//* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
//* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
//* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


//* item.item[=].item[=].linkId = "/93043-8/32624-9"
//* item.item[=].item[=].code = $loinc#32624-9 "Race"
//* item.item[=].item[=].text = "Raza"
//* item.item[=].item[=].type = #choice
//* item.item[=].item[=].required = false
//* item.item[=].item[=].repeats = true
//* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA6156-9 "Asian"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA14045-1 "Native Hawaiian"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30187-1 "Pacific Islander"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA14042-8 "Black/African American"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA4457-3 "White"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA4-4 "American Indian/Alaskan Native"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA46-8 "Other"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
//* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
//* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
//* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93043-8/93035-4"
* item.item[=].item[=].code = $loinc#93035-4 "Has season or migrant farm work been your or your family's main source of income at any point in past 2 years [PRAPARE]"
* item.item[=].item[=].text = "¿Ha sido el trabajo agrícola estacional o migrante la principal fuente de ingresos para usted o su familia en algún momento de los últimos 2 años?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


//* item.item[=].item[=].linkId = "/93043-8/93034-7"
//* item.item[=].item[=].code = $loinc#93034-7 "Discharged from the U.S. Armed Forces"
//* item.item[=].item[=].text = "¿Ha sido dado de baja de las fuerzas armadas de los Estados Unidos?"
//* item.item[=].item[=].type = #choice
//* item.item[=].item[=].required = false
//* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
//* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
//* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
//* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
//* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93043-8/54899-0"
* item.item[=].item[=].code = $loinc#54899-0 "Preferred language"
* item.item[=].item[=].text = "¿Qué idioma te sientes más cómodo hablando?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA43-5 "English"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30188-9 "Language other than English"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"


* item.item[+].linkId = "/93042-0"
* item.item[=].code = $loinc#93042-0 "Family and home [PRAPARE]"
* item.item[=].text = "Familia y hogar"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].item[=].extension.valueCoding = $unitsofmeasure#{#} "{#}"


* item.item[=].item[=].linkId = "/93042-0/63512-8"
* item.item[=].item[=].code = $loinc#63512-8 "How many people are living or staying at this address [#]"
* item.item[=].item[=].text = "¿Con cuántos miembros de la familia, incluyéndote a ti, vives actualmente?"
* item.item[=].item[=].type = #integer
* item.item[=].item[=].required = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93042-0/71802-3"
* item.item[=].item[=].code = $loinc#71802-3 "Housing status"
* item.item[=].item[=].text = "¿Cuál es su situación de vivienda en la actualidad?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA30189-7 "I have housing"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30190-5 "I do not have housing (staying with others, in a hotel, in a shelter, living outside on the street, on a beach, in a car, or in a park)"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item.extension.valueCodeableConcept.text = "Botón de ayuda"


* item.item[=].item[=].item.linkId = "/93042-0/71802-3-help"
* item.item[=].item[=].item.text = "Describe el arreglo de vivienda del paciente"
* item.item[=].item[=].item.type = #display
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93042-0/93033-9"
* item.item[=].item[=].code = $loinc#93033-9 "Are you worried about losing your housing [PRAPARE]"
* item.item[=].item[=].text = "¿Está preocupado por perder su vivienda?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"


* item.item[=].item[+].linkId = "/93042-0/56799-0"
* item.item[=].item[=].code = $loinc#56799-0 "Address"
* item.item[=].item[=].text = "¿En qué dirección vives?"
* item.item[=].item[=].type = #string
* item.item[=].item[=].required = false


* item.item[+].linkId = "/93041-2"
* item.item[=].code = $loinc#93041-2 "Money and resources [PRAPARE]"
* item.item[=].text = "Dinero y recursos"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93041-2/82589-3"
* item.item[=].item[=].code = $loinc#82589-3 "Highest level of educ"
* item.item[=].item[=].text = "¿Cuál es el nivel más alto de educación que ha terminado?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA30191-3 "Less than high school degree"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30192-1 "High school diploma or GED"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30193-9 "More than high school"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93041-2/67875-5"
* item.item[=].item[=].code = $loinc#67875-5 "Employment status current"
* item.item[=].item[=].text = "¿Cuál es tu situación laboral actual?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA17956-6 "Unemployed"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30138-4 "Part-time or temporary work"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30136-8 "Full-time work"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30137-6 "Otherwise unemployed but not seeking work (ex: student, retired, disabled, unpaid primary care giver)"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93041-2/76437-3"
* item.item[=].item[=].code = $loinc#76437-3 "Primary insurance"
* item.item[=].item[=].text = "¿Cuál es su seguro principal?"  //MODIFICAR LOS SEGUROS DE LAS RESPUESTAS
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA30194-7 "None/uninsured"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA17849-3 "Medicaid"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30195-4 "CHIP Medicaid"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA15652-3 "Medicare"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30196-2 "Other public insurance (not CHIP)"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30197-0 "Other public insurance (CHIP)"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA6350-8 "Private insurance"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].item[=].extension.valueCoding = $unitsofmeasure#/a "/a"


* item.item[=].item[=].linkId = "/93041-2/63586-2"
* item.item[=].item[=].code = $loinc#63586-2 "What was your best estimate of the total income of all family members from all sources, before taxes, in last year [PhenX]"
* item.item[=].item[=].text = "Durante el año pasado, ¿cuál fue el ingreso total combinado para usted y los miembros de su familia con los que vive?"
* item.item[=].item[=].type = #decimal
* item.item[=].item[=].required = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93041-2/93031-3"
* item.item[=].item[=].code = $loinc#93031-3 "Have you or any family members you live with been unable to get any of the following when it was really needed in past 1 year [PRAPARE]"
* item.item[=].item[=].text = "En el último año, ¿usted o algún miembro de su familia con el que vive no ha podido obtener alguno de los siguientes cuando realmente lo necesitaba?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = true
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA30125-1 "Food"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30126-9 "Clothing"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30124-4 "Utilities"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30127-7 "Child care"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30128-5 "Medicine or Any Health Care (Medical, Dental, Mental Health, Vision)"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30129-3 "Phone"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA46-8 "Other"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93041-2/93030-5"
* item.item[=].item[=].code = $loinc#93030-5 "Has lack of transportation kept you from medical appointments, meetings, work, or from getting things needed for daily living"
* item.item[=].item[=].text = "¿La falta de transporte le ha impedido asistir a citas médicas, reuniones, al trabajo o conseguir lo necesario para la vida diaria?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = true
* item.item[=].item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension.valueString = "A"
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA30133-5 "Yes, it has kept me from medical appointments or from getting my medications"
* item.item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension.valueString = "B"
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA30134-3 "Yes, it has kept me from non-medical meetings, appointments, work, or from getting things that I need"
* item.item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension.valueString = "C"
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension.valueString = "X"
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA30257-2 "Patient unable to respond"


* item.item[+].linkId = "/93040-4"
* item.item[=].code = $loinc#93040-4 "Social and emotional health [PRAPARE]"
* item.item[=].text = "Salud social y emocional"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93040-4/93029-7"
* item.item[=].item[=].code = $loinc#93029-7 "How often do you see or talk to people that you care about and feel close to [PRAPARE]"
* item.item[=].item[=].text = "¿Con qué frecuencia ve o habla con las personas que le importan y con las que se siente cercano/a? (Por ejemplo: hablar por teléfono con amigos, visitar a amigos o familiares, ir a la iglesia o a reuniones de un club)"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA27722-0 "Less than once a week"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30130-1 "1 or 2 times a week"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30131-9 "3 to 5 times a week"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30132-7 "5 or more times a week"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93040-4/93038-8"
* item.item[=].item[=].code = $loinc#93038-8 "Stress level"
* item.item[=].item[=].text = "El estrés es cuando alguien se siente tenso, nervioso, ansioso o no puede dormir por la noche porque su mente está preocupada. ¿Qué tan estresado/a se siente?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA6568-5 "Not at all"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA13863-8 "A little bit"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA13909-9 "Somewhat"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA13902-4 "Quite a bit"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA13914-9 "Very much"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"


* item.item[+].linkId = "/93039-6"
* item.item[=].code = $loinc#93039-6 "Optional additional questions [PRAPARE]"
* item.item[=].text = "Preguntas adicionales opcionales"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93039-6/93028-9"
* item.item[=].item[=].code = $loinc#93028-9 "Have you spent more than 2 nights in a row in a jail, prison, detention center, or juvenile correctional facility in past 1 year [PRAPARE]"
* item.item[=].item[=].text = "En el último año,¿ha pasado más de 2 noches seguidas en una cárcel, prisión, centro de detención o centro correccional juvenil?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93039-6/93027-1"
* item.item[=].item[=].code = $loinc#93027-1 "Are you a refugee"
* item.item[=].item[=].text = "¿Eres un refugiado/a?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93039-6/93026-3"
* item.item[=].item[=].code = $loinc#93026-3 "Do you feel physically and emotionally safe where you currently live [PRAPARE]"
* item.item[=].item[=].text = "¿Se siente seguro/a física y emocionalmente en el lugar donde vive actualmente?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA32-8 "No"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA14072-5 "Unsure"
* item.item[=].item[=].answerOption[+].valueCoding = $loinc#LA30122-8 "I choose not to answer this question"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Bajar"


* item.item[=].item[=].linkId = "/93039-6/76501-6"
* item.item[=].item[=].code = $loinc#76501-6 "Within the last year, have you been afraid of your partner or ex-partner"
* item.item[=].item[=].text = "En el último año, ¿ha tenido miedo de su pareja o ex-pareja?"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].required = false
* item.item[=].item[=].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension[=].valueString = "1"
* item.item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item.item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA33-6 "Yes"
* item.item[=].item[=].answerOption[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item.item[=].item[=].answerOption[=].extension[=].valueString = "0"
* item.item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item.item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item.item[=].item[=].answerOption[=].valueCoding = $loinc#LA32-8 "No"