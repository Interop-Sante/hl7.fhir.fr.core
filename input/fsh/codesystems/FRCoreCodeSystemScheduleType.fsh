CodeSystem: FRCoreCodeSystemScheduleType
Id: fr-core-schedule-type
Title: "FR Core CodeSystem Schedule Type"
Description: "Schedule type"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #busy-unavailable "Indisponibilité"
* #free "Disponibilité"

// SCS profile
* ^experimental = false