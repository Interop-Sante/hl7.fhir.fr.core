Profile: FRCoreOrganizationProfile
Parent: Organization
Id: fr-core-organization
Title: "FR Core Organization Profile"
Description: """Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-organization)

* extension contains
    FRCoreOrganizationShortNameExtension named shortName 0..1                           and
    $organization-description-r5 named description 0..1                                 and
    http://hl7.org/fhir/StructureDefinition/organization-period named usePeriod 0..1    and
    http://hl7.org/fhir/StructureDefinition/note named openReason 0..1                  and
    http://hl7.org/fhir/StructureDefinition/note named closureReason 0..1               and
    FRCoreOrganizationMemberExtension named members 0..1
    

* type  from FRCoreValueSetOrganizationType (example)
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile
* partOf only Reference(FRCoreOrganizationProfile or FRCoreOrganizationEtablissementProfile)
* partOf.type from FRCoreValueSetOrganizationType (extensible)
* contact.telecom only FRCoreContactPointProfile
* contact.address only FRCoreAddressProfile
