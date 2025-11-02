Extension: FRCoreOrganizationMemberExtension
Id: fr-core-organization-member
Title: "FR Core Organization Extension - Membre d'organisation"
Description: "Extension permettant de définir des membres d'une organisation."
Context: FRCoreOrganizationProfile

* ^url = "http://example.org/fhir/StructureDefinition/organization-member"
* ^version = "1.0.0"
* ^status = #active

* extension contains member 0..1
* extension[member].valueReference only Reference(FRCoreOrganizationProfile)