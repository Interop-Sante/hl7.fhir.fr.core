ValueSet: FRCoreValueSetEncounterType
Id: fr-core-vs-encounter-type
Title: "FR Core ValueSet Encounter type"
Description: "Jeu de valeurs des types de rencontre.\r\nA coded type for an encounter"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* $v2-0007#C "Elective/Confort|Confort"
* $v2-0007#L "Labor and delivery|Accouchement maternité"
* $v2-0007#N "Newborn (Birth in healthcare facility)|Nouveau né"
* $v2-0007#R "Routine|Séance"
* $v2-0007#U "Emergency|Caractère d’urgence aigue du problème quel que soit le service d’entrée"
* $fr-type-admission#RM "Rétrocession de médicament"
* $fr-type-admission#IE "Prestation inter-établissements"

// SVS profile
* ^experimental = false