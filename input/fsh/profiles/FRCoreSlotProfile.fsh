Profile: FRCoreSlotProfile
Parent: Slot
Id: fr-core-slot
Title: "FR Core Slot Profile"
Description: "http://interopsante.org/fhir/StructureDefinition/fr-core-slot"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "meta.profile"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-slot)

* identifier.use from IdentifierUse (required)
* serviceCategory ..1
* specialty from FRCoreValueSetPractitionerSpecialty (required)
* schedule only Reference(FRCoreScheduleProfile)
* status from SlotStatus (required)