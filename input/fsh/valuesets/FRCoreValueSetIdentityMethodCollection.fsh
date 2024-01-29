ValueSet: FRCoreValueSetIdentityMethodCollection
Id: fr-core-vs-identity-method-collection
Title: "FR Core ValueSet Identity method collection"
Description: "The validation mode of the identity."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^identifier.system = "http://interopsante.org/fhir/ValueSet"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.8.1.3.31"

* ^immutable = true
* include codes from system FRCoreCodeSystemMethodCollection

// SVS profile
* ^experimental = false