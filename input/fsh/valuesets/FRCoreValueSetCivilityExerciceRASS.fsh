ValueSet: FRCoreValueSetCivilityExerciceRASS
Id: fr-core-civility-exercice-rass
Title: "FR Core ValueSet Civility exercice RASS"
Description: "Civilités d'exercice d'un professionnel du RASS"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* include codes from system $JDV-J79-CiviliteExercice-RASS

// SVS profile
* ^experimental = false