ValueSet: FRCoreValueSetAllergyIntoleranceType
Id: fr-core-vs-allergy-intolerance-type
Title: "FR Core ValueSet Allergy Intolerance Type"
Description: "Jeu de valeurs contenant les codes autorisés pour les types d'allergies et d'intolérances."
* insert SetValueset

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* http://hl7.org/fhir/allergy-intolerance-type#allergy "allergie"
* http://hl7.org/fhir/allergy-intolerance-type#intolerance "intolerance"
* $SCT#56840009 "idiosyncrasie"
* $SCT#609396006 "hypersensibilité non allergique"

// SVS profile
* ^experimental = false
