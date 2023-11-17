ValueSet: FRCoreValueSetCivilityRASS
Id: fr-core-civility-rass
Title: "FR Core ValueSet Civility RASS"
Description: "Civilités des personnes physiques du RASS"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* include codes from system $JDV-J78-Civilite-RASS

// A remplacer ?