// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationDispenseDocument.fsh
// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRCoreMedicationDispenseProfile
Parent: MedicationDispense
Id: fr-core-medication-dispense
Title: "FR Core MedicationDispense Profile"
Description: "FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

// Pas de profil EU Core disponible pour cette ressource
// * identifier 1..1 // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
  * ^short = "Identifiant"
* type 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * ^short = "Complétude de la dispensation"
  * coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis
* quantity 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * ^short = "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)"
  * unit from FRValueSetEDQMDocument

* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
  * ^short = "Médicament délivré"
* authorizingPrescription 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
  * ^short = "Référence de la prescription"
* authorizingPrescription only Reference (FRMedicationRequestDocument)
* supportingInformation 0..1
  * ^short = "Posologie"
* supportingInformation only Reference (FRMedicationAdministrationDocument)
  * ^short = "Instructions au patient"
  * ^short = "Instruction au patient sous forme codée"
  * ^short = "Instructions au dispensateur"
  * ^short = "Acte de substitution"
  * type 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * type = #G "Substitution autorisée par un produit générique"
