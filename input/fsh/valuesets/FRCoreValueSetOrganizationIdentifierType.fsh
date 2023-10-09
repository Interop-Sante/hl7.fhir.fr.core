ValueSet: FRCoreValueSetOrganizationIdentifierType
Id: fr-core-organization-identifier-type
Title: "FR Core ValueSet Organization identifier type"
Description: "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations)."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"

* ^immutable = true
* $fr-v2-0203#FINEJ "FINESS d'entité juridique"
* $fr-v2-0203#FINEG "FINESS d'entité géographique"
* $fr-v2-0203#SIREN "Identification de l'organisation au SIREN"
* $fr-v2-0203#SIRET "Identification de l'organisation au SIRET"
* $fr-v2-0203#IDNST "Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS"
* $fr-v2-0203#INTRN "Identifiant interne"
* $fr-v2-0203#EXTRN "Identifiant externe"