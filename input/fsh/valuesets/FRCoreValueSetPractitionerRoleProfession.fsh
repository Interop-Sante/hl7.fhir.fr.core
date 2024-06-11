ValueSet: FRCoreValueSetPractitionerRoleProfession
Id: fr-core-vs-practitioner-role-profession
Title: "FR Core ValueSet PractitionerRole Profession"
Description: "The profession(s) of the practitioner."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^immutable = true
* include codes from system $TRE-G15-ProfessionSante
* include codes from system $TRE-R95-UsagerTitre
* include codes from system $TRE-R94-ProfessionSocial
* include codes from system $TRE-R291-AutreProfession

// SVS profile
* ^experimental = false