ValueSet: FRCoreValueSetPatientGenderINS
Id: fr-core-vs-patient-gender-INS
Title: "FR Core ValueSet Patient gender INS"
Description: "Genres autorisés dans le cadre du Patient INS.\r\nPermitted genders for INS Patient"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include http://hl7.org/fhir/administrative-gender#male
* include http://hl7.org/fhir/administrative-gender#female
* include http://hl7.org/fhir/administrative-gender#unknown

// SVS profile
* ^experimental = false