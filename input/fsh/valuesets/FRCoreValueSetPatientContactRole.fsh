ValueSet: FRCoreValueSetPatientContactRole
Id: fr-core-vs-patient-contact-role
Title: "FR Core ValueSet Patient contact role"
Description: "ValueSet patient contact role"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass
* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique
* http://terminology.hl7.org/CodeSystem/v2-0131#O
* http://terminology.hl7.org/CodeSystem/v2-0131#U

// SVS profile
* ^experimental = false