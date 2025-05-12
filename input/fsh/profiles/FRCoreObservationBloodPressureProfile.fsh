Profile: FRCoreObservationBpProfile
Parent: http://hl7.org/fhir/StructureDefinition/bp
Id: fr-core-observation-bp
Title: "FR Core Observation Blood Pressure Profile"
Description: "French profile for blood pressure.
\r\nProfil français de la pression artérielle. Profil basé sur le profil bp d'HL7"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-bp)

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open

* extension contains $workflow-supportingInfo named supportingInfo 0..1

* code.coding 1..

* encounter only Reference(FRCoreEncounterProfile)
* effective[x] 1..
* effective[x] only dateTime or Period
* effective[x] ^short = "Often just a dateTime for Vital Signs"
* effective[x] ^definition = "Often just a dateTime for Vital Signs"
* performer only Reference(CareTeam or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)

* value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* value[x] ..0

* bodySite from FRCoreValueSetSPO2BodyLocation (example)
* method from FRCoreValueSetBloodPressureMeasurementMethod (example)

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.rules = #open
* component ^short = "Used when reporting systolic and diastolic blood pressure."

* component contains
    MeanBP 0..1

* component[SystolicBP].value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* component[SystolicBP].code.coding 1..


* component[DiastolicBP] ^short = "Used when reporting diastolic blood pressure."
* component[DiastolicBP] ^definition = "Used when reporting diastolic blood pressure."
* component[DiastolicBP].value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* component[DiastolicBP].value[x] ^slicing.description = "Erroneous slicing wainting for R5 correction"
* component[DiastolicBP].code.coding 1..

* component[MeanBP] ^short = "Mean blood pressure"
* component[MeanBP] ^definition = "Mean blood pressure"
* component[MeanBP].code MS
* component[MeanBP].code.coding ^slicing.discriminator[0].type = #value
* component[MeanBP].code.coding ^slicing.discriminator[=].path = "code"
* component[MeanBP].code.coding ^slicing.discriminator[+].type = #value
* component[MeanBP].code.coding ^slicing.discriminator[=].path = "system"
* component[MeanBP].code.coding ^slicing.rules = #open
* component[MeanBP].code.coding ^slicing.description = "Erroneous slicing wainting for R5 correction"

* component[MeanBP].code.coding contains MBPCode 1..1
* component[MeanBP].code.coding[MBPCode].system 1..
* component[MeanBP].code.coding[MBPCode].system = "http://loinc.org" 
* component[MeanBP].code.coding[MBPCode].code 1..
* component[MeanBP].code.coding[MBPCode].code = #8478-0 
* component[MeanBP].code.coding[MBPCode].code ^short = "Mean blood pressure"
* component[MeanBP].code.coding[MBPCode].code ^definition = "Mean blood pressure"