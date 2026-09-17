ValueSet: FRCoreValueSetAllergySubstance
Id: fr-core-vs-allergy-substance
Title: "FR Core ValueSet Allergy Substance"
Description: "Jeu de valeurs permettant de coder la substance responsable d'une allergie."
* insert SetValueset

// Substances : code SMS
* include codes from system https://smt.esante.gouv.fr/terminologie-sms

// SVS profile
* ^experimental = false
