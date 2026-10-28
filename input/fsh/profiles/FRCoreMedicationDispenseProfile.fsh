Profile: FRCoreMedicationDispenseProfile
Parent: MedicationDispense
Id: fr-core-medication-dispense
Title: "FR Core MedicationDispense Profile"
Description: "FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-medication-dispense)

* type ^short = "Complétude de la dispensation"
* type.coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis (extensible)

* quantity 1..1
* quantity ^short = "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)"

* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament délivré"

* authorizingPrescription 0..1
* authorizingPrescription only Reference(FRCoreMedicationRequestProfile)
* authorizingPrescription ^short = "Référence de la prescription"

* dosageInstruction.patientInstruction ^short = "Instructions au patient"
* dosageInstruction.additionalInstruction ^short = "Instruction au patient sous forme codée"
* dosageInstruction.text ^short = "Instructions au dispensateur"

* substitution ^short = "Acte de substitution"
