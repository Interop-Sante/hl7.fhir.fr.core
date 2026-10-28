// Source : https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cim11-mms (OID 2.16.840.1.113883.6.347)
ValueSet: FRCoreValueSetAllergyIntoleranceManifestationAllergie
Id: fr-core-vs-allergyintolerance-manifestation-allergie
Title: "FR Core ValueSet AllergyIntolerance Manifestation - Allergie"
Description: "Codes CIM-11 autorisés pour coder la manifestation d'une réaction lorsque AllergyIntolerance.type = allergie : Chapitre 04 Maladies du système immunitaire, Bloc Affections allergiques ou d'hypersensibilité."
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-cim11-mms where concept is-a #BlockL1-4A8

// SVS profile
* ^experimental = false
