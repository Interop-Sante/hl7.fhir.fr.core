ValueSet: FRCoreValueSetHeightBodyPosition
Id: fr-core-vs-height-body-position
Title: "FR Core ValueSet BodyPosition"
Description: "ValueSet Body Position"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from system $SCT where concept is-a #10904000
* include codes from system $SCT where concept is-a #102538003

// SVS profile
* ^experimental = false