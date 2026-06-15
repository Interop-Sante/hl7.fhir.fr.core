// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationDocument.fsh
Profile: FRCoreMedicationProfile
Parent: Medication
Id: fr-core-medication
Title: "FR Core Medication Profile"
Description: "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin."

// Profil EU Core disponible : https://hl7.eu/fhir/base/StructureDefinition/medication-eu-core
//* ^extension[$imposeProfile].valueCanonical = Canonical(medication-eu-core)

* code 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1, EU Core : 0..1)
  * ^short = "Code du produit de santé"
* code.coding from FRValueSetMedicationTranslationDocument (required)

//Nom de marque du produit : Extension IHE
* extension contains $ihe-ext-medication-productname named productName 1..1 // Nom de marque requis — contrainte ajoutée par IG Document Core
* extension[productName] ^short = "Nom de marque du produit."
* form from FRValueSetEDQMDocument (required)
  * ^short = "Numéro de lot"
  * ^short = "Date d'expiration du produit"

//Code de regroupement ATC et Code du produit de santé conditionné (CIP) : Extension IHE
* extension contains $ihe-ext-medication-classification named classification 0..*
* extension[classification] ^short = "Classification ATC."
 // Extension IHE pour les caractéristiques du médicament
* extension contains $ihe-ext-medication-characteristic named conditionnement  0..*
* extension[conditionnement] ^short = "Présentation / conditionnement."

  * itemCodeableConcept
  * itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs
  * itemCodeableConcept ^short = "Code SMS de la substance active"
  * itemCodeableConcept.text
  * itemCodeableConcept.text ^short = "Nom de la substance"
  * itemReference
  * itemReference only Reference(FRCoreMedicationProfile)

  * strength
  * strength ^short = "Quantité de substance présente dans le médicament"
    * numerator 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
    * denominator 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
