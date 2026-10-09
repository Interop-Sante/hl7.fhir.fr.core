// Source : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/extensions/FrAdditionalWhen.fsh
Extension: FRCoreAdditionalWhenValuesExtension
Id: fr-core-additional-when-values
Title: "FR Core Additional When Values Extension"
Description: "Codes additionnels pour l'élément Dosage.timing.repeat.when, issus de PN13."
* ^context.type = #element
* ^context.expression = "Dosage.timing.repeat"
* . ^short = "Codes additionnels pour l'élément when"
* . ^definition = "Précise des codes additionnels pour la période d'occurrence qui ne sont pas dans le jeu de valeurs event-timing"
* value[x] only code
* value[x] from FRCoreValueSetAdditionalWhenCodes (required)
