ValueSet: FRCoreValueSetPatientGender
Id: fr-core-vs-patient-gender
Title: "FR Core ValueSet Patient gender"
Description: "Genres autorisés dans le cadre du genre administratif du Patient en France. Pour partager des genres suplémentaires (ex. biologique), cf gender harmony implementation guide.\r\nPermitted genders for French Patient gender."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include http://hl7.org/fhir/administrative-gender#male
* include http://hl7.org/fhir/administrative-gender#female
* include http://hl7.org/fhir/administrative-gender#unknown

// SVS profile
* ^experimental = false