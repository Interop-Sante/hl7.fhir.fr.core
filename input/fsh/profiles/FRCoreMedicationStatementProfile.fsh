// Source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationStatementDocument.fsh
//
// Profil EU Core disponible :
//   https://hl7.eu/fhir/base/StructureDefinition/medicationStatement-eu-core
// Pas de profil ePrescription équivalent pour MedicationStatement
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationStatementProfile
Parent: MedicationStatement
Id: fr-core-medication-statement
Title: "FR Core MedicationStatement Profile"
Description: "FRCoreMedicationStatementProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament déclaré, mode d'administration, quantité, durée et fréquence). Couvre les bilans médicamenteux et conciliations médicamenteuses."

// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique." // Doc Core

// Prescription — Doc Core : Reference(FRMedicationRequestDocument) — FRCore : FRCoreMedicationRequestProfile
* basedOn only Reference(FRCoreMedicationRequestProfile)
* basedOn ^short = "Prescription"

// Administration — Doc Core : Reference(FRMedicationAdministrationDocument) — FRCore : FRCoreMedicationAdministrationProfile
* partOf only Reference(FRCoreMedicationAdministrationProfile)
* partOf ^short = "Administration associée"

* category ^short = "Acte ou situation" // Doc Core

* status ^short = "Statut" // Doc Core
// Doc Core : status = #completed — FRCore : valeur fixe supprimée (cohérence avec MedicationRequest)

* effective[x] only Period // Doc Core
* effectivePeriod ^short = "Durée du traitement" // Doc Core

// Posologie (Doc Core)
* dosage.timing ^short = "Fréquence d'administration"
* dosage.sequence ^short = "Séquence (dosages progressifs/fractionnés)"
* dosage.asNeeded[x] ^short = "Dosage conditionnel"
* dosage.route from FRValueSetEDQMDocument (extensible) // Doc Core
* dosage.route ^short = "Voie d'administration"
* dosage.route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)"
* dosage.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible) // Doc Core
* dosage.site ^short = "Région anatomique d'administration"
* dosage.doseAndRate.doseQuantity ^short = "Dose déclarée" // Doc Core
* dosage.maxDosePerPeriod ^short = "Dose maximale" // Doc Core
* dosage.doseAndRate.rateQuantity ^short = "Rythme d'administration" // Doc Core
* dosage.additionalInstruction ^short = "Instructions au patient (codé)" // Doc Core
* dosage.additionalInstruction.text ^short = "Instruction au patient (texte libre)" // Doc Core

// Médicament — Doc Core : CodeableConcept or Reference(FRMedicationDocument) — FRCore : FRCoreMedicationProfile
* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament"

// Motif du traitement — Doc Core : Reference(FRConditionDocument or Observation) — FRCore : base FHIR
// * reasonReference only Reference(FRCoreConditionProfile or Observation) // FRCoreConditionProfile non encore mergée
* reasonReference only Reference(Condition or Observation)
* reasonReference ^short = "Motif du traitement"

* note 0..1 // Doc Core (FHIR R4 base : 0..*)
* note ^short = "Conditions préalables à l'utilisation du médicament."
