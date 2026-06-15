// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationStatementDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/medicationStatement-eu-core
Profile: FRCoreMedicationStatementProfile
Parent: MedicationStatement
Id: fr-core-medication-statement
Title: "FR Core MedicationStatement Profile"
Description: "
 - FRCoreMedicationStatementProfile permet de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement."

// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* basedOn only Reference(FRMedicationRequestDocument)
* basedOn ^short = "Prescription"
* partOf only Reference(FRMedicationAdministrationDocument)
  * ^short = "Acte ou situation"
  * ^short = "Statut"
* status = #completed
* effective[x] only Period
  * ^short = "Durée du traitement"

  * timing
  * timing ^short = "Fréquence d'administration"
  // Dosages progressifs, fractionnés
  * sequence
  // Dosages conditionnels
  * asNeeded[x]
  * route
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)"
  * site
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis

  * ^short = "Dose déclarée"

  * ^short = "dose maximale"
  * ^short = "rythme d'administration"
//Instructions au patient
// si codé :
  * ^short = "Instructions au patient"
  // si non codé :
  * ^short = "Instruction au patient"
// Médicament
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)

// Motif du traitement
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

* note 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
