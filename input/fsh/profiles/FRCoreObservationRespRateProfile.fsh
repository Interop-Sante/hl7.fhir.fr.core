Profile: FRCoreObservationRespRateProfile
Parent: $resprate
Id: fr-core-observation-resp-rate
Title: "FR Core Observation Respiratory Rate Profile"
Description: """French profile for the ObservationResprate profil (described in the HL7 VitalSigns profil) for France.
\r\nProfilage du profil ObservationResprate (décrit dans le profil HL7 VitaSigns) pour l'usage en France"""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-resp-rate)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationBodyPositionExtExtension named bodyPosition 0..1 and
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)

* method from FRCoreValueSetRespiratoryRateMeasurementMethod (example)

* value[x] ^slicing.rules = #open
