Profile: FRCoreObservationHeartRateProfile
Parent: $heartrate
Id: fr-core-observation-heartrate
Title: "FR Core Observation Heart Rate Profile"
Description: "French profiling of the FHIR Vital Sign Heart Rate Profile | Profilage français du profil Vital Signs Heart rate"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "meta.profile"
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

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile or FRCoreRelatedPersonProfile)
* interpretation from $fr-core-obervation-interpretation (extensible)

* bodySite from $ValueSet-heartRateMeasBodyLocationPrecoordVS.html (example)
* bodySite.coding from $fr-core-heart-rate-body-position (example)

* method from $ValueSet-heartRateMeasMethodVS.html (example)
* method ^binding.description = "Methods for heartrate observations."
* method.coding from $fr-core-heart-rate-method (example)

* value[x] ^slicing.rules = #open
