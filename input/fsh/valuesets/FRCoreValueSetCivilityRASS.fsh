ValueSet: FRCoreValueSetCivilityRASS
Id: fr-core-civility-rass
Title: "FR Core ValueSet Civility RASS"
Description: "Civilités des personnes physiques du RASS"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* include codes from system $_1

// A remplacer ?