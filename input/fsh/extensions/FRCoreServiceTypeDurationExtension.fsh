Extension: FRCoreServiceTypeDurationExtension
Id: fr-core-service-type-duration
Title: "FR Core Service Type Duration Extension"
Description: "Cette extension française permet d'associer le type de service avec la durée de ce service.\n\rThis French extension allows to associate the type of service with the duration of this service"
* ^context[0].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
* ^context[+].type = #element
* ^context[=].expression = "Schedule"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    serviceType 1..1 and
    duration 0..1

* extension[serviceType] ^short = "Type of the service that has to be performed during the appointment | Typedu service à assurer durant le RDV"

* extension[serviceType].value[x] only CodeableConcept
* extension[serviceType].valueCodeableConcept from ServiceType (example) //TODO : Was extensible before, should we use extensible or example binding ?
* extension[serviceType].valueCodeableConcept ^binding.description = "This value set defines an example set of codes of service-types."

* extension[duration] ^short = "Duration of the service | durée du service"
* extension[duration] ^definition = "Duration of the service that has to be performed during the appointment | Durée du service à assurer durant le RDV"
* extension[duration].value[x] only Duration