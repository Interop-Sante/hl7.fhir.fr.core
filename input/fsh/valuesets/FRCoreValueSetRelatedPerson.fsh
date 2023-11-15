ValueSet: FRCoreValueSetRelatedPerson
Id: fr-core-related-person
Title: "FR Core ValueSet Related person role"
Description: "Value set related person role"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass|20210326120000

// Ajouté :
// * include codes from system https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique
// * http://terminology.hl7.org/CodeSystem/v2-0131#O
// * http://terminology.hl7.org/CodeSystem/v2-0131#U

// A discuter Lundi, issues associées :
// - https://github.com/Interop-Sante/hl7.fhir.fr.core/issues/32
// - https://github.com/Interop-Sante/hl7.fhir.fr.core/issues/31

// Pourquoi est-ce que Patient.contact a deux slices ?