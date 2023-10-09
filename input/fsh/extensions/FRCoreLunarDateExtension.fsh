Extension: FRCoreLunarDateExtension
Id: fr-core-lunar-date
Title: "FR Core Lunar Date Extension"
Description: "Approximate birthdate of the patient | Date de naissance approximative du patient."
* ^purpose = "Indicate an approximate birthdate | Permet de spécifier une date approximative de naissance du patient"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Approximative birthdate | Date de naissance approximative"
* value[x] only string