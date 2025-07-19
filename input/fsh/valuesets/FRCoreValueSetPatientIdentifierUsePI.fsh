ValueSet: FRCoreValueSetPatientIdentifierUsePI
Id: fr-core-vs-patient-identifier-use-pi
Title: "FR Core ValueSet Patient identifier use PI"
Description: "Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP).\r\nAuthorized use for PI identifier."

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from valueset http://hl7.org/fhir/ValueSet/identifier-use
* exclude http://hl7.org/fhir/identifier-use#official

// SVS profile
* ^experimental = false