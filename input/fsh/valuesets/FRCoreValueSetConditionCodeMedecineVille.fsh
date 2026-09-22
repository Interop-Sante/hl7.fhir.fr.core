ValueSet: FRCoreValueSetConditionCodeMedecineVille
Id: fr-core-vs-condition-code-medecine-ville
Title: "FR Core ValueSet Condition Code - Médecine de ville"
Description: "CISP-2 (ICPC-2), CISP-3 (ICPC-3), DRC (SFMG) : code problème en médecine de ville"
* insert SetValueset

* include codes from system http://hl7.org/fhir/sid/icpc-2
* include codes from system http://terminology.hl7.org/CodeSystem/ICPC-3 // CISP-3 : URI réservée par WONCA/HL7 (NamingSystem), pas encore de CodeSystem FHIR publié avec concepts (à ce jour)
* include codes from system https://www.sfmg.fr

// SVS profile
* ^experimental = false
