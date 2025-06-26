Profile: FRCoreOrganizationUACProfile
Parent: OrganizationEu
Id: fr-core-organization-uac
Title: "FR Core Organization UAC Profile"
Description: "This profile specializes the fr-core-organization profile to represent administrative units inside healthcare institutions.
\r\nCe profil spécialise le profil fr-core-organization pour représenter les unités administratives et comptables (UAC) en établissement"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-organization-uac)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreOrganizationShortNameExtension named shortName 0..1 and
    FRCoreOrganizationDescriptionExtension named description 0..1 and
    http://hl7.org/fhir/StructureDefinition/organization-period named usePeriod 0..1
    
* identifier.use from IdentifierUse (required)
* identifier.type 1..
* identifier.type from FRCoreValueSetOrganizationIdentifierType (extensible)
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true
* identifier.system 1..
* identifier.value 1..
* type from FRCoreValueSetOrganizationType (extensible)

* partOf only Reference(FRCoreOrganizationProfile)
* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true
* partOf.type from FRCoreValueSetOrganizationType (extensible)