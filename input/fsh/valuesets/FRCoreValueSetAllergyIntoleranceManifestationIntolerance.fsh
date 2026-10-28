// Source : https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cim11-mms (OID 2.16.840.1.113883.6.347)
ValueSet: FRCoreValueSetAllergyIntoleranceManifestationIntolerance
Id: fr-core-vs-allergyintolerance-manifestation-intolerance
Title: "FR Core ValueSet AllergyIntolerance Manifestation - Intolérance"
Description: "Codes CIM-11 autorisés pour coder la manifestation d'une réaction lorsque AllergyIntolerance.type = intolérance : Chapitre 21 Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-cim11-mms where concept is-a #21

// SVS profile
* ^experimental = false
