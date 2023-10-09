Profile: FRCoreScheduleProfile
Parent: Schedule
Id: fr-core-schedule
Title: "FR Core Schedule Profile"
Description: """Profile of the Schedule resource for France | Profil de la ressource Schedule pour l'usage en France.
This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule | Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation."""
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreServiceTypeDurationExtension named serviceTypeDuration 0..* and
    FRCoreScheduleAvailabilityTimeExtension named availabilityTime 0..*

* identifier.use from IdentifierUse (required)

* serviceCategory ..1
* serviceType ..0
* specialty from FRCoreValueSetPractitionerSpecialty (required)

* actor only Reference(Device or PractitionerRole or FRCoreRelatedPersonProfile or FRCoreHealthcareServiceProfile or FRCoreLocationProfile or FRCorePatientProfile or FRCorePractitionerProfile)