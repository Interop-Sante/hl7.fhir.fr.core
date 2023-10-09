Profile: FRCoreSlotProfile
Parent: Slot
Id: fr-core-slot
Title: "FR Core Slot Profile"
Description: "http://interopsante.org/fhir/StructureDefinition/fr-core-slot"
* identifier.use from IdentifierUse (required)
* serviceCategory ..1
* specialty from FRCoreValueSetPractitionerSpecialty (required)
* schedule only Reference(FRCoreScheduleProfile)
* status from SlotStatus (required)