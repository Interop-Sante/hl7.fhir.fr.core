Extension: FRCoreNotCoveredExtension
Id: fr-core-not-covered
Title: "FR Core Not Covered Extension"
Description: "Extension permettant d'indiquer si le traitement est non remboursable."
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only boolean
* valueBoolean 1..1
