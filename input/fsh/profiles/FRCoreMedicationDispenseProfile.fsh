// Source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationDispenseDocument.fsh
//
// Profil EU Core : non disponible
// Pas de profil ePrescription équivalent pour MedicationDispense
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationDispenseProfile
Parent: MedicationDispense
Id: fr-core-medication-dispense
Title: "FR Core MedicationDispense Profile"
Description: "FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

// * identifier 1..1 // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant" // Doc Core

* type 1..1 // Doc Core (FHIR R4 base : 0..1)
* type ^short = "Complétude de la dispensation" // Doc Core
* type.coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis (extensible) // Doc Core

* quantity 1..1 // Doc Core (FHIR R4 base : 0..1)
* quantity ^short = "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)" // Doc Core
* quantity.unit from FRCoreValueSetEDQM (extensible) // Doc Core

// Médicament — Doc Core : CodeableConcept or Reference(FRMedicationDocument) — FRCore : FRCoreMedicationProfile
* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament délivré"

// Prescription — Doc Core : Reference(FRMedicationRequestDocument) — FRCore : FRCoreMedicationRequestProfile
* authorizingPrescription 0..1 // Doc Core (FHIR R4 base : 0..*)
* authorizingPrescription only Reference(FRCoreMedicationRequestProfile)
* authorizingPrescription ^short = "Référence de la prescription"

// Posologie — Doc Core : Reference(FRMedicationAdministrationDocument) — FRCore : FRCoreMedicationAdministrationProfile
* supportingInformation 0..1 // Doc Core
* supportingInformation only Reference(FRCoreMedicationAdministrationProfile)
* supportingInformation ^short = "Posologie"

* dosageInstruction.patientInstruction ^short = "Instructions au patient" // Doc Core
* dosageInstruction.additionalInstruction ^short = "Instruction au patient sous forme codée" // Doc Core
* dosageInstruction.text ^short = "Instructions au dispensateur" // Doc Core

* substitution ^short = "Acte de substitution" // Doc Core
* substitution.type 1..1 // Doc Core (FHIR R4 base : 0..1)
* substitution.type = #G "Substitution autorisée par un produit générique" // Doc Core
