Profile: FRCoreMedicationAdministrationProfile
Parent: MedicationAdministration
Id: fr-core-medication-administration
Title: "FR Core MedicationAdministration Profile"
Description: "FRCoreMedicationAdministrationProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament, mode d'administration, quantité, durée et fréquence)."

* category ^short = "Acte ou situation"

* status ^short = "Statut"

* effective[x] only Period
* effectivePeriod ^short = "Durée du traitement"

// Backport R5 — fréquence d'administration (Doc Core)
* extension contains $medicationAdministration-occurence-r5 named occurenceR5 0..1
* extension[occurenceR5].valueTiming 1..1
* extension[occurenceR5] ^short = "Fréquence d'administration"

// Dosage
* dosage.extension contains FRCoreMedicationAdministrationSequenceExtension named sequence 0..* // dosages progressifs/fractionnés
* dosage.route from FRCoreValueSetEDQMRoute (extensible)
* dosage.route ^short = "Voie d'administration"
* dosage.route ^binding.description = "EDQM - Standard terms / classe ROA"
* dosage.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible)
* dosage.site ^short = "Région anatomique d'administration"
* dosage.dose ^short = "Dose à administrer"
* dosage.rateRatio ^short = "Dose maximale"
* dosage.rateQuantity ^short = "Rythme d'administration"
* dosage.text ^short = "Instruction au patient"

// Médicament — Doc Core : Reference(FRMedicationDocument) — FRCore : FRCoreMedicationProfile
* medicationReference only Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament administré"

* reasonReference only Reference(FRCoreConditionProfile or Condition or Observation)
* reasonReference ^short = "Motif du traitement"

// Prescription — Doc Core : Reference(FRMedicationRequestDocument) — FRCore : FRCoreMedicationRequestProfile
* request only Reference(FRCoreMedicationRequestProfile)
* request ^short = "Prescription"

* note ^short = "Conditions préalables à l'utilisation du médicament."
