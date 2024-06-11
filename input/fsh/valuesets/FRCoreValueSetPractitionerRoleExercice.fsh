ValueSet: FRCoreValueSetPractitionerRoleExercice
Id: fr-core-vs-practitioner-role-exercice
Title: "FR Core ValueSet PractitionerRole Exercice"
Description: "The exercice(s) of the practitioner."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^immutable = true
* include codes from system $TRE-R21-Fonction
* include codes from system $TRE-R96-AutreFonctionSanitaire
* include codes from system $TRE-R85-RolePriseCharge

* include codes from system $TRE-R22-GenreActivite
* include codes from system $TRE-R23-ModeExercice
* include codes from system $TRE-R24-TypeActiviteLiberale
* include codes from system $TRE-R32-StatutHospitalier
* include codes from system $TRE-R24-TypeActiviteLiberale
* include codes from system $TRE-G05-SousSectionTableauCNOP
* include codes from system $TRE-R06-SectionTableauCNOP

// SVS profile
* ^experimental = false