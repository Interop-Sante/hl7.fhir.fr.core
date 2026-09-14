ValueSet: FRCoreValueSetConditionCodeAllergie
Id: fr-core-vs-condition-code-allergie
Title: "FR Core ValueSet Condition Code - Allergie"
Description: "CIM-11 (Chapitre 04) : réactions allergiques ou d'hypersensibilité, terminologie absente de la CIM-10"
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-cim11-mms where concept is-a #04

// SVS profile
* ^experimental = false
