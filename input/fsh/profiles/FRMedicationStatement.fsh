Profile: FRMedicationStatement
Parent: MedicationStatement
Id: fr-medication-statement
Title: "MedicationStatement - FR Medication Statement"
Description: "
 - FRMedicationStatement permet de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* basedOn only Reference(FRMedicationRequestDocument)
* basedOn ^short = "Prescription"
* partOf only Reference(FRMedicationAdministrationDocument)
* category
  * ^short = "Acte ou situation"
* status
  * ^short = "Statut"
* status = #completed
* effective[x] only Period
* effectivePeriod
  * ^short = "Durée du traitement"

* dosage
  * timing
  * timing ^short = "Fréquence d'administration"
  // Dosages progressifs, fractionnés 
  * sequence
  // Dosages conditionnels
  * asNeeded[x] MS 
  * route
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)" 
  * site
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  
* dosage.doseAndRate
* dosage.doseAndRate.doseQuantity
  * ^short = "Dose déclarée"

* dosage.maxDosePerPeriod
* dosage.maxDosePerPeriod
  * ^short = "dose maximale"
* dosage.doseAndRate.rateQuantity
  * ^short = "rythme d'administration"
//Instructions au patient
// si codé : 
* dosage.additionalInstruction MS 
  * ^short = "Instructions au patient"
  // si non codé : 
* dosage.additionalInstruction.text MS 
  * ^short = "Instruction au patient"
// Médicament
* medication[x]
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)

// Motif du traitement
* reasonReference
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

* note 0..1
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
