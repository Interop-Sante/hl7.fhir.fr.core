// Source : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/extensions/FrTreatmentIntent.fsh
Extension: FRCoreTreatmentIntentExtension
Id: fr-core-treatment-intent
Title: "FR Core MedicationRequest Treatment Intent Extension"
Description: "Intention globale du traitement."
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only CodeableConcept
* value[x] from FRCoreValueSetTreatmentIntent (extensible)
* value[x] ^short = "Intention globale du traitement"
* value[x] ^binding.description = "Codes SNOMED CT pour l'intention globale du traitement"
