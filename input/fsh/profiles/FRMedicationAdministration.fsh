Profile: FRMedicationAdministration
Parent: MedicationAdministration
Id: fr-medication-administration
Title: "MedicationAdministration - FR Medication Administration"
Description: "
 - FRMedicationAdministration permert de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration c’est-à dire qu’il a été prescrit."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
  * ^short = "Acte ou situation"
* status 1..1
  * ^short = "Statut"
* status = #completed
* effective[x] only Period
  * ^short = "Durée du traitement"

// R5 : occurenceTiming
// Fréquence d'administration
* extension contains $medicationAdministration-occurence-r5 named occurenceR5 0..1
* extension[occurenceR5].valueTiming 1..1
* extension[occurenceR5] ^short = "Fréquence d'administration"

  // Dosages progressifs ou fractionnés
  * extension contains FRMedicationAdministrationSequenceExtension named sequence 0..*
  // Dosages conditionnels
  //* extension contains http://hl7.org/fhir/StructureDefinition/note named dosagesConditionnels 0..* 
  * route
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)" 
  * site
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * dose
    * ^short = "Dose à administrer"

  * ^short = "doseMaximale"
  * ^short = "rythme d'administration"

// Médicament
* medication[x] only Reference(FRMedicationDocument)

// Instruction au patient
  * ^short = "Instruction au patient"

// Motif du traitement
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

* request only Reference(FRMedicationRequestDocument)
* request ^short = "Prescription"

* note 0..1
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
