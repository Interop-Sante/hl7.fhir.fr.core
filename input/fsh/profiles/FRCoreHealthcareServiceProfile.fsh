Profile: FRCoreHealthcareServiceProfile
Parent: HealthcareService
Id: fr-core-healthcare-service
Title: "FR Core Healthcare Service Profile"
Description: """Profile of the HealthcareService resource for France | Profil de la ressource HealthcareService pour l'usage en France.
This profile adds the element serviceTypeDuration to associate the service with the duration of this service | Ce profil ajoute l'élément serviceTypeDuration de façon à associer le service avec la durée du service."""

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FRCoreServiceTypeDurationExtension named serviceTypeDuration 0..*


* identifier.use from IdentifierUse (required)

* providedBy only Reference(FRCoreOrganizationProfile)
* category ..1
* specialty from FRCoreValueSetPractitionerSpecialty (required)
* location only Reference(FRCoreLocationProfile)
* telecom only FRCoreContactPointProfile
* coverageArea only Reference(FRCoreLocationProfile)
* availableTime.daysOfWeek from DaysOfWeek (required)