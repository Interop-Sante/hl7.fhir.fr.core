Profile: FRCoreObservationBmiProfile
Parent: $bmi
Id: fr-core-observation-bmi
Title: "FR Core Observation Bmi Profile"
Description: "French profile based on HL7 Vital Sign Body mass index (BMI) [Ratio].
\r\nProfil français de l'indice de masse corporelle basé sur le profil HL7 Vital Sign BMI"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-bmi)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfo 0..1

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile)

* value[x] ^slicing.description = "sclicing description"
* value[x] ^slicing.rules = #open