ValueSet: FRCoreValueSetConditionCode
Id: fr-core-vs-condition-code
Title: "FR Core ValueSet Condition Code"
Description: "Identification de la condition, du problème ou du diagnostic : CIM-10, CIM-11 (Chapitre 04), CISP-2 (ICPC-2), DRC (SFMG)"
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-cim-10
* include codes from system https://smt.esante.gouv.fr/terminologie-cim11-mms where concept is-a #04
* include codes from system http://hl7.org/fhir/sid/icpc-2
* include codes from system https://www.sfmg.fr

// SVS profile
* ^experimental = false
