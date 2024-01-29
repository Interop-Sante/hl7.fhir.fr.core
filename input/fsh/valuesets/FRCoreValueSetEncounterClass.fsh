ValueSet: FRCoreValueSetEncounterClass
Id: fr-core-vs-encounter-class
Title: "FR Core ValueSet Encounter class"
Description: "A set of codes that can be used to indicate the class of the encounter."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa


* http://terminology.hl7.org/ValueSet/v3-ActEncounterCode#ACUTE "Inpatient acute"
* http://terminology.hl7.org/ValueSet/v3-ActEncounterCode#NONAC "Inpatient non acute"
* http://terminology.hl7.org/ValueSet/v3-ActEncounterCode#PRENC "Pre-admission"
* http://terminology.hl7.org/ValueSet/v3-ActEncounterCode#SS "Short stay"
* http://terminology.hl7.org/ValueSet/v3-ActEncounterCode#VR "Virtual"

// SVS profile
* ^experimental = false