Profile: FRCoreHealthcareServiceProfile
Parent: HealthcareService
Id: fr-core-healthcare-service
Title: "FR Core Healthcare Service Profile"
Description: """Profile of the HealthcareService resource for France | Profil de la ressource HealthcareService pour l'usage en France.
This profile adds the element serviceTypeDuration to associate the service with the duration of this service | Ce profil ajoute l'élément serviceTypeDuration de façon à associer le service avec la durée du service."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-healthcare-service)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FRCoreServiceTypeDurationExtension named serviceTypeDuration 0..*


* identifier.use from IdentifierUse (required)

* providedBy only Reference(FRCoreOrganizationProfile)
* category ..1

* specialty from FRCoreValueSetPractitionerSpecialty (preferred)
// TODO - Une étude approfondie doit être faite sur les spécialités médicales : R38, R211, R266, R01 ...
// La TRE à privilégier semble être la TRE R211 utilisée par le ROR

* location only Reference(FRCoreLocationProfile)
* telecom only FRCoreContactPointProfile
* coverageArea only Reference(FRCoreLocationProfile)
