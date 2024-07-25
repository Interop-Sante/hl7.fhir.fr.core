ValueSet: FRCoreValueSetINSEECode
Id: fr-core-vs-insee-code
Title: "FR Core ValueSet INSEE code"
Description: "the French Address Insee Codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^identifier.system = "http://interopsante.org/fhir/ValueSet"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.8.1.3.4"

* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM

// SVS profile
* ^experimental = false