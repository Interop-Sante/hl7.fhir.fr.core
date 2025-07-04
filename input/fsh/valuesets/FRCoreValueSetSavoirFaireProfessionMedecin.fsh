ValueSet: FRCoreValueSetSavoirFaireProfessionMedecin
Id: fr-core-vs-savoir-faire-profession-medecin
Title: "Fr ValueSet Savoir-faire Profession Medecin"
Description: "Savoir-faire pour la profession 10 (Médecin)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from system $TRE_G13-OrientationParticuliere
* include codes from system $TRE_R39-Competence
* include codes from system $TRE_R43-CapaciteSavoirFaire
* include codes from system $TRE_R40-CompetenceExclusive
* include codes from system $TRE_R97-DroitExerciceCompl
* include codes from system $TRE_R42-DESCnonQualifiant
* include codes from system $TRE_R44-QualificationPAC
* include codes from system $TRE_R38-SpecialiteOrdinale
* include codes from system $TRE_R359-SurspecialiteTransversale

* ^experimental = false