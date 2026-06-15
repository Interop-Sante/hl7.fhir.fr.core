Profile: FRMedicationAdministrationDocument
Parent: MedicationAdministration
Id: fr-medication-administration-document
Title: "MedicationAdministration - FR Medication Administration Document"
Description: "
 - FRMedicationAdministrationDocument permert de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration c’est-à dire qu’il a été prescrit."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..* MS
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* category MS
  * ^short = "Acte ou situation"
* status 1..1 MS
  * ^short = "Statut"
* status = #completed
* effective[x] only Period
* effectivePeriod MS
  * ^short = "Durée du traitement"

// R5 : occurenceTiming
// Fréquence d'administration
* extension contains $medicationAdministration-occurence-r5 named occurenceR5 0..1
* extension[occurenceR5].valueTiming 1..1
* extension[occurenceR5] ^short = "Fréquence d'administration"

* dosage
  // Dosages progressifs ou fractionnés
  * extension contains FRMedicationAdministrationSequenceExtension named sequence 0..*
  // Dosages conditionnels
  //* extension contains http://hl7.org/fhir/StructureDefinition/note named dosagesConditionnels 0..* 
  * route MS
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)" 
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * dose MS
    * ^short = "Dose à administrer"

* dosage.rate[x] MS
* dosage.rateRatio MS
  * ^short = "doseMaximale"
* dosage.rateQuantity MS
  * ^short = "rythme d'administration"

// Médicament
* medication[x] MS
* medication[x] only Reference(FRMedicationDocument)

// Instruction au patient
* dosage.text MS
  * ^short = "Instruction au patient"

// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

* request only Reference(FRMedicationRequestDocument)
* request ^short = "Prescription"

* note 0..1 MS
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
