Profile: FRCoreMedicationDispenseProfile
Parent: MedicationDispense
Id: fr-core-medication-dispense
Title: "FR Core MedicationDispense Profile"
Description: "FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

* type ^short = "Complétude de la dispensation"
* type.coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis (extensible)

* quantity 1..1
* quantity ^short = "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)"

// Médicament — Doc Core : CodeableConcept or Reference(FRMedicationDocument) — FRCore : FRCoreMedicationProfile
* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament délivré"

// Prescription — Doc Core : Reference(FRMedicationRequestDocument) — FRCore : FRCoreMedicationRequestProfile
* authorizingPrescription 0..1
* authorizingPrescription only Reference(FRCoreMedicationRequestProfile)
* authorizingPrescription ^short = "Référence de la prescription"

* dosageInstruction.patientInstruction ^short = "Instructions au patient"
* dosageInstruction.additionalInstruction ^short = "Instruction au patient sous forme codée"
* dosageInstruction.text ^short = "Instructions au dispensateur"

* substitution ^short = "Acte de substitution"
