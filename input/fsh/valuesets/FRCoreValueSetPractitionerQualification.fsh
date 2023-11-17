ValueSet: FRCoreValueSetPractitionerQualification
Id: fr-core-practitioner-qualification
Title: "FR Core ValueSet Practitioner qualification"
Description: "A code classifying the qualification of the provider"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* ^immutable = true
* include codes from system $TRE-R48-DiplomeEtatFrancais
* include codes from system $TRE-R47-CommissionQualification
* include codes from system $TRE-R49-DiplomeEtudeSpecialisee
* include codes from system $TRE-R50-DESCGroupe1Diplome
* include codes from system $TRE-R51-DESCGroupe2Diplome
* include codes from system $TRE-R53-DiplomePaysEEE
* include codes from system $TRE-R54-DiplomeUniversiteInterUniversitaire
* include codes from system $TRE-R55-CertificatEtudeSpeciale
* include codes from system $TRE-R56-Attestation
* include codes from system $TRE-R52-CapaciteDiplome
* include codes from system $TRE-R58-AutreTypeDiplome
* include codes from system $TRE-R36-AutreDiplomeObtenu
* include codes from system $TRE-R226-Dip2iemeCycleNQ