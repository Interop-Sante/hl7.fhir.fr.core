Profile: FRCoreObservationBodyHeightProfile
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: fr-core-observation-body-height
Title: "FR Core Observation Body Height Profile"
* . ^short = "French Body Height Profile based on FHIR Body height profile"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-body-height)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationHeightBodyPositionExtension named bodyposition 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile)
* method from $ValueSet-heightLengthMeasMethodVS (example)

* value[x] ^slicing.rules = #open
