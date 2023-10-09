Profile: FRCoreObservationHeadCircumProfile
Parent: $headcircum
Id: fr-core-observation-head-circum
Title: "FR Core Observation Head Circum Profile"
Description: "HL7 Vital Signs Head Occipital-frontal circumference profil | Profil HL7 Vital Signs Circonférence de la tête"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains $workflow-supportingInfo named supportingInfo 0..1 MS
* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCorePatientProfile or FRCoreOrganizationProfile)
* interpretation from $fr-core-obervation-interpretation (extensible)

* value[x] ^slicing.rules = #open
