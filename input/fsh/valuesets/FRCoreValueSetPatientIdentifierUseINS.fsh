ValueSet: FRCoreValueSetPatientIdentifierUseINS
Id: fr-core-vs-patient-identifier-use-ins
Title: "FR Core ValueSet Patient identifier use INS"
Description: "Use autorisés pour l'identifiant national de santé.\r\nAuthorized use for INS identifier."

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include http://hl7.org/fhir/identifier-use#official
* include http://hl7.org/fhir/identifier-use#old

// SVS profile
* ^experimental = false