Profile: FRCoreObservationBodyTemperatureProfile
Parent: $bodytemp
Id: fr-core-observation-body-temperature
Title: "FR Core Observation Body Temperature Profile"
Description: "French profil body temperature | Profil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d'HL7"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS
* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or FRCorePatientProfile or FRCoreOrganizationProfile or PractitionerRole)
* bodySite from $ValueSet-bodyTempMeasBodyLocationPrecoordVS.html (example)

* value[x] ^slicing.rules = #open
