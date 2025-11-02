Profile: FRCoreOrganizationProfile
Parent: Organization
Id: fr-core-organization
Title: "FR Core Organization Profile"
Description: """Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France."""

* ^version = "1.0.0"
* ^status = #active
* ^kind = #resource
* ^fhirVersion = #4.0.1
* ^abstract = false

* extension contains
    FRCoreOrganizationShortNameExtension named shortName 0..1                           and
    FRCoreOrganizationDescriptionExtension named description 0..1                       and
    http://hl7.org/fhir/StructureDefinition/organization-period named usePeriod 0..1    and
    http://hl7.org/fhir/StructureDefinition/note named openReason 0..1                  and
    http://hl7.org/fhir/StructureDefinition/note named closureReason 0..1               and
    FRCoreOrganizationMemberExtension named members 0..1
    

* type  from FRCoreValueSetOrganizationType (required)
* telecom only FRCoreContactPointProfile
* partOf only Reference(FRCoreOrganizationProfile or FRCoreOrganizationEtablissementProfile)
* partOf.type from FRCoreValueSetOrganizationType (extensible)

