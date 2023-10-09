Extension: FRCoreEncounterEstimatedDischargeDateExtension
Id: fr-core-estimated-discharge-date
Title: "FR Core Encounter Estimated Discharge Date Extension"
Description: "This extension is used to specify the estimated discharge date of the patient"
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "Estimated discharge date | Date de sortie estimée"
* value[x] only date