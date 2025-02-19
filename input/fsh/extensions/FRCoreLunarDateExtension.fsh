// TODO - extension utilisée nulle part, à étudier 

Extension: FRCoreLunarDateExtension
Id: fr-core-lunar-date
Title: "FR Core Lunar Date Extension"
Description: "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient"
* ^purpose = "Indicate an approximate birthdate | Permet de spécifier une date approximative de naissance du patient"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Approximative birthdate | Date de naissance approximative"
* value[x] only string