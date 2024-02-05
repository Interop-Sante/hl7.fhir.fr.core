ValueSet: FRCoreValueSetPatientIdentifierType
Id: fr-core-vs-patient-identifier-type
Title: "FR Core ValueSet Patient identifier type"
Description: "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* http://terminology.hl7.org/CodeSystem/v2-0203#PPN "Passport Number" // v 2.9.0
* http://terminology.hl7.org/CodeSystem/v2-0203#PN "Person Number"
* http://terminology.hl7.org/CodeSystem/v2-0203#PI "Patient Identifier"
* http://terminology.hl7.org/CodeSystem/v2-0203#RRI "Regional Registry ID"

* $fr-core-v2-0203#NNFRA "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code" // v 1.1.0
* $fr-core-v2-0203#NDP "Identifiant du patient au Dossier Pharmaceutique"
* $fr-core-v2-0203#INS-C "Identifiant National de Santé Calculé"
* $fr-core-v2-0203#INS-NIA "NIR temporaire"
* $fr-core-v2-0203#INS-NIR "NIR définitif"

// SVS profile
* ^experimental = false