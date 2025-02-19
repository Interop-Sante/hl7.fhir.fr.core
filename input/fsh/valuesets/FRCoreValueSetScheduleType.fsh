ValueSet: FRCoreValueSetScheduleType
Id: fr-core-vs-schedule-type
Title: "FR Core ValueSet Schedule type"
Description: "Jeu de valeurs des types de Schedule.\r\nA Schedule type"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Schedule-type"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* $fr-schedule-type#busy-unavailable "Indisponibilité"
* $fr-schedule-type#free "Disponibilité"

// SVS profile
* ^experimental = false