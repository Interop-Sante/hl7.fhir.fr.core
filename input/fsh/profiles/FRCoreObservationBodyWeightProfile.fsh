Profile: FRCoreObservationBodyWeightProfile
Parent: $bodyweight
Id: fr-core-observation-body-weight
Title: "FR Core Observation Body Weight Profile"
Description: "French profile of body weight based on the FHIR profil BodyWeightMeas.
\r\nProfil français Body weight basé sur le profil HL7 BodyWeightMeas de Vital Signs."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-body-weight)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfo 0..1

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile)

* value[x] ^slicing.rules = #open
