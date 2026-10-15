// Source : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/valuesets/FrAdditionalWhenCodesValueSet.fsh
ValueSet: FRCoreValueSetAdditionalWhenCodes
Id: fr-core-vs-additional-when-codes
Title: "FR Core ValueSet Additional When Codes"
Description: "Jeu de valeurs à utiliser pour coder des périodes d'occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing."
* insert SetValueset

* include codes from system fr-core-cs-additional-when-codes

// ePrescription
* ^experimental = false
