ValueSet: FRCoreValueSetPractitionerRoleExercice
Id: fr-core-vs-practitioner-role-exercice
Title: "FR Core ValueSet PractitionerRole Exercice"
Description: "The exercice(s) of the practitioner."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^immutable = true
* include codes from system $TRE-R21-Fonction
* include codes from system $TRE-R96-AutreFonctionSanitaire
* include codes from system $TRE-R85-RolePriseCharge


// SVS profile
* ^experimental = false