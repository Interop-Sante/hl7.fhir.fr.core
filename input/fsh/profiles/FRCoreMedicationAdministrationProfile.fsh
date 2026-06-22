// Source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationAdministrationDocument.fsh
//
// Profil EU Core : non disponible
// Pas de profil ePrescription équivalent pour MedicationAdministration
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationAdministrationProfile
Parent: MedicationAdministration
Id: fr-core-medication-administration
Title: "FR Core MedicationAdministration Profile"
Description: "FRCoreMedicationAdministrationProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament, mode d'administration, quantité, durée et fréquence)."

// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique." // Doc Core

* category ^short = "Acte ou situation" // Doc Core

* status 1..1 // FHIR R4 base : 1..1 — cardinalité identique
* status ^short = "Statut" // Doc Core
// Doc Core : status = #completed — FRCore : valeur fixe supprimée (cohérence avec MedicationRequest)
* effective[x] only Period // Doc Core
* effectivePeriod ^short = "Durée du traitement" // Doc Core

// Backport R5 — fréquence d'administration (Doc Core)
* extension contains $medicationAdministration-occurence-r5 named occurenceR5 0..1
* extension[occurenceR5].valueTiming 1..1 // Doc Core — sous-élément obligatoire si extension présente
* extension[occurenceR5] ^short = "Fréquence d'administration"

// Dosage
// FRMedicationAdministrationSequenceExtension : extension Doc Core à créer dans FRCore (non encore portée)
* dosage.extension contains FRMedicationAdministrationSequenceExtension named sequence 0..* // Doc Core : dosages progressifs/fractionnés
* dosage.route from FRValueSetEDQMDocument (extensible) // Doc Core
* dosage.route ^short = "Voie d'administration"
* dosage.route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)"
* dosage.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible) // Doc Core
* dosage.site ^short = "Région anatomique d'administration"
* dosage.dose ^short = "Dose à administrer" // Doc Core
* dosage.rateRatio ^short = "Dose maximale" // Doc Core
* dosage.rateQuantity ^short = "Rythme d'administration" // Doc Core
* dosage.text ^short = "Instruction au patient" // Doc Core

// Médicament — Doc Core : Reference(FRMedicationDocument) — FRCore : FRCoreMedicationProfile
* medication[x] only Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament administré"

// Motif du traitement — Doc Core : Reference(FRConditionDocument or Observation) — FRCore : base FHIR
// * reasonReference only Reference(FRCoreConditionProfile or Observation) // FRCoreConditionProfile non encore mergée
* reasonReference only Reference(Condition or Observation)
* reasonReference ^short = "Motif du traitement"

// Prescription — Doc Core : Reference(FRMedicationRequestDocument) — FRCore : FRCoreMedicationRequestProfile
* request only Reference(FRCoreMedicationRequestProfile)
* request ^short = "Prescription"

* note 0..1 // Doc Core (FHIR R4 base : 0..*)
* note ^short = "Conditions préalables à l'utilisation du médicament."
