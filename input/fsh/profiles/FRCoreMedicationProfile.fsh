Profile: FRCoreMedicationProfile
Parent: MedicationEuCore
Id: fr-core-medication
Title: "FR Core Medication Profile"
Description: "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-medication)

* code 1..1
* code ^short = "Code du produit de santé"
* code from FRCoreValueSetMedication (required)

* extension[productName] 0..1
* extension[productName] ^short = "Nom de marque du produit."
// L'extension productName pourra être passée en 1..1 si cela s'avère nécessaire dans les prochaines releases de FRCore (feedback needed)

* form from FRCoreValueSetEDQMForm (required)
* form ^short = "Forme pharmaceutique (EDQM)"

* batch.lotNumber ^short = "Numéro de lot"
* batch.expirationDate ^short = "Date d'expiration du produit"

* extension[classification] ^short = "Classification ATC."
* extension[characteristic] ^short = "Présentation / conditionnement."

// Composants du médicament
* ingredient.itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs
* ingredient.itemCodeableConcept ^short = "Code SMS de la substance active"
* ingredient.itemCodeableConcept.text ^short = "Nom de la substance"
* ingredient.itemReference only Reference(FRCoreMedicationProfile) // FRCore (remplace Reference(FRMedicationDocument))
* ingredient.strength ^short = "Quantité de substance présente dans le médicament"

