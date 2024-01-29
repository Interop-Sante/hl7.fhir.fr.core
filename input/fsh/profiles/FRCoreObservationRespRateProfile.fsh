Profile: FRCoreObservationRespRateProfile
Parent: $resprate
Id: fr-core-observation-resp-rate
Title: "FR Core Oservation Resp Rate Profile"
Description: """Profile of the ObservationResprate profil (described in the HL7 VitalSigns profil) for France | Profilage du profil ObservationResprate (décrit dans le profil HL7 VitaSigns) pour l'usage en France
This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions | Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France."""

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

* method from $ValueSet-respiratoryRateMeasMethodVS (example)

* value[x] ^slicing.rules = #open
