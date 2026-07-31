ValueSet: FRCoreValueSetAllergyIntoleranceType
Id: fr-core-vs-allergy-intolerance-type
Title: "FR Core ValueSet Allergy Intolerance Type"
Description: "Jeu de valeurs contenant les codes autorisés pour les types d'allergies et d'intolérances."
* insert SetValueset

// Seuls allergy et intolerance sont utilisables sur AllergyIntolerance.type (binding required en R4) : idiosyncrasie et hypersensibilité non allergique ne sont valides que via l'extension backport R5 $allergy-intolerance-type-r5 (voir FRCoreAllergyIntoleranceProfile).
* $SCT#56840009 "idiosyncrasie"
* $SCT#609396006 "hypersensibilité non allergique"

// SVS profile
* ^experimental = false
