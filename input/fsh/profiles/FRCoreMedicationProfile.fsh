// Sources :
//   Doc Core      : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationDocument.fsh
//   ePrescription : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrMedication.fsh
//
// Parent : profil EU Core https://hl7.eu/fhir/base/StructureDefinition/medication-eu-core
//   Les slices d'extensions IHE MPD (productName, classification, characteristic, sizeOfItem,
//   unitOfPresentation, packageType, device) sont déjà posées par EU Core ; FRCore ne fait que
//   les narrower ou les traduire, sans les redéfinir en doublon.
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationProfile
Parent: MedicationEuCore
Id: fr-core-medication
Title: "FR Core Medication Profile"
Description: "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin."

* code 1..1 // Doc Core (FHIR R4 base : 0..1, EU Core : 0..1)
* code ^short = "Code du produit de santé"
// Doc Core : FRValueSetMedicationTranslationDocument
// ePrescription : from fr-medication-code (required) — UCD, SMS, ANSM
// FRCore : aligne sur Doc Core ; harmonisation terminologique avec ePrescription à prévoir
* code from FRCoreValueSetMedication (required)

// Nom de marque : Extension IHE MPD (Doc Core)
// Slice déjà posée par EU Core (0..1) : pas de "contains", on resserre juste la cardinalité et le ^short
* extension[productName] 1..1 // Doc Core : 1..1 (FHIR R4 base : absent, EU Core : 0..1)
* extension[productName] ^short = "Nom de marque du produit."

* form from FRCoreValueSetEDQM (required) // Doc Core
* form ^short = "Forme pharmaceutique (EDQM)"

// Doc Core : batch.lotNumber et batch.expirationDate documentés
* batch.lotNumber ^short = "Numéro de lot" // Doc Core
* batch.expirationDate ^short = "Date d'expiration du produit" // Doc Core

// Classification ATC et conditionnement : Extensions IHE MPD (Doc Core)
// Slices déjà posées par EU Core (mêmes cardinalités) : pas de "contains", juste la traduction du ^short
* extension[classification] ^short = "Classification ATC."
* extension[characteristic] ^short = "Présentation / conditionnement."

// Composants du médicament
* ingredient.itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs // Doc Core
* ingredient.itemCodeableConcept ^short = "Code SMS de la substance active"
* ingredient.itemCodeableConcept.text ^short = "Nom de la substance"
* ingredient.itemReference only Reference(FRCoreMedicationProfile) // FRCore (remplace Reference(FRMedicationDocument))
* ingredient.strength ^short = "Quantité de substance présente dans le médicament" // Doc Core

// ePrescription : ingredient.strength only FrRatioMedication — type ePrescription-spécifique (UCUM/EDQM), non porté dans FRCore
