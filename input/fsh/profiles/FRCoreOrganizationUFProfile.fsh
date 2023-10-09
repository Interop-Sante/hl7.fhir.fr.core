Profile: FRCoreOrganizationUFProfile
Parent: Organization
Id: fr-core-organization-uf
Title: "FR Core Organization UF Profile"
Description: "This profile specializes the fr-core-organization profile to represent wards inside healthcare institutions | Ce profil spécialise le profil fr-core-organization pour représenter les unités fonctionnelles en établissement"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    FRCoreOrganizationShortNameExtension named shortName 0..1 and
    FRCoreOrganizationDescriptionExtension named description 0..1 and
    FRCoreOrganizationBudgetLetterExtension named budgetLetter 0..1 and
    FRCoreOrganizationFieldExtension named equipmentField 0..* and
    FRCoreOrganizationActivityFieldExtension named activityField 0..1 and
    FRCoreOrganizationExternalExtension named external 0..1 and
    FRCoreOrganizationTotalNumberOfTheoricalAccomodationSpaceExtension named accomodationSpace 0..1 and
    FRCoreOrganizationApplicantActExtension named applicantAct 0..1 and
    FRCoreOrganizationExecutantExtension named executantAct 0..1 and
    FRCoreOrganizationAnalysisSectionExtension named analysisSection 0..1 and
    FRCoreOrganizationActivityTypeExtension named activityType 0..1 and
    $organization-period named usePeriod 0..1
    
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