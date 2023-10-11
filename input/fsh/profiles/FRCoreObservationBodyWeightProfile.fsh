Profile: FRCoreObservationBodyWeightProfile
Parent: $bodyweight
Id: fr-core-observation-body-weight
Title: "FR Core Observation Body Weight Profile"
Description: "French profil Body weight based on the FHIR profil BodyWeightMeas. | Profil français Body weight basé sur le profil HL7 BodyWeightMeas de Vital Signs."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains $workflow-supportingInfo named supportingInfo 0..1
* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile)

* method from $fr-core-weight-measurement-method (example)

* value[x] ^slicing.rules = #open
