// Sources :
//   Doc Core      : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationDocument.fsh
//   ePrescription : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrMedication.fsh
//
// Profil EU Core disponible :
//   https://hl7.eu/fhir/base/StructureDefinition/medication-eu-core
//
// Héritage IHE MPD : non établi — les extensions IHE MPD sont utilisées mais Parent reste Medication.
//   À décider : faut-il imposer le profil IHE MPD via $imposeProfile ?
//   //* ^extension[$imposeProfile].valueCanonical = Canonical(IHEMedication)
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationProfile
Parent: Medication
Id: fr-core-medication
Title: "FR Core Medication Profile"
Description: "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin."

* code 1..1 // Doc Core (FHIR R4 base : 0..1, EU Core : 0..1)
* code ^short = "Code du produit de santé"
// Doc Core : from FRValueSetMedicationTranslationDocument (required)
// ePrescription : from fr-medication-code (required) — UCD, SMS, ANSM
// FRCore : aligne sur Doc Core ; harmonisation terminologique avec ePrescription à prévoir
* code.coding from FRValueSetMedicationTranslationDocument (required)

// Nom de marque : Extension IHE MPD (Doc Core)
* extension contains $ihe-ext-medication-productname named productName 1..1 // Doc Core : 1..1 (FHIR R4 base : absent)
* extension[productName] ^short = "Nom de marque du produit."

* form from FRValueSetEDQMDocument (required) // Doc Core
* form ^short = "Forme pharmaceutique (EDQM)"

// Doc Core : batch.lotNumber et batch.expirationDate documentés
// ePrescription : batch ..0 — INCOMPATIBILITÉ (voir PR) — FRCore ne contraint pas batch
* batch.lotNumber ^short = "Numéro de lot" // Doc Core
* batch.expirationDate ^short = "Date d'expiration du produit" // Doc Core

// Classification ATC et conditionnement : Extensions IHE MPD (Doc Core)
* extension contains $ihe-ext-medication-classification named classification 0..*
* extension[classification] ^short = "Classification ATC."
* extension contains $ihe-ext-medication-characteristic named conditionnement 0..*
* extension[conditionnement] ^short = "Présentation / conditionnement."

// Composants du médicament
// Doc Core : itemCodeableConcept from SMT-SMS ; itemReference only Reference(FRMedicationDocument)
// ePrescription : ingredient.item[x] only CodeableConcept — INCOMPATIBILITÉ (voir PR)
// FRCore : CodeableConcept et Reference tous deux autorisés (médicament composé pouvant référencer un autre Medication)
* ingredient.itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs // Doc Core
* ingredient.itemCodeableConcept ^short = "Code SMS de la substance active"
* ingredient.itemCodeableConcept.text ^short = "Nom de la substance"
* ingredient.itemReference only Reference(FRCoreMedicationProfile) // FRCore (remplace Reference(FRMedicationDocument))
* ingredient.strength ^short = "Quantité de substance présente dans le médicament" // Doc Core
* ingredient.strength.numerator 1..1 // Doc Core (FHIR R4 base : 0..1)
* ingredient.strength.denominator 1..1 // Doc Core (FHIR R4 base : 0..1)
// ePrescription : ingredient.strength only FrRatioMedication — type ePrescription-spécifique (UCUM/EDQM), non porté dans FRCore
