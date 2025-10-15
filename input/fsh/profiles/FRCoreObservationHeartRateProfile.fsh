Profile: FRCoreObservationHeartRateProfile
Parent: $heartrate
Id: fr-core-observation-heartrate
Title: "FR Core Observation Heart Rate Profile"
Description: "French profile for the FHIR Vital Sign Heart Rate Profile.\r\n
Profilage français du profil Vital Signs Heart rate"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-heartrate)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    FRCoreObservationBodyPositionExtExtension named bodyPosition 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile or FRCoreRelatedPersonProfile)

* bodySite from FRCoreValueSetHeartRateMeasurementBodyLocation (example)

* method from FRCoreValueSetHeartRateMeasurementMethod (example)
* method ^binding.description = "Methods for heartrate observations."

* value[x] ^slicing.rules = #open
