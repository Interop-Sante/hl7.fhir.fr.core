ValueSet: FRCoreValueSetRelatedPerson
Id: fr-core-vs-related-person
Title: "FR Core ValueSet Related person role"
Description: "Value set related person role"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode

// SVS profile
* ^experimental = false