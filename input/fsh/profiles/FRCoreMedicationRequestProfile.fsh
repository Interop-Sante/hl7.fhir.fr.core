// Sources :
//   Doc Core      : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationRequestDocument.fsh
//   ePrescription : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrMedicationRequest.fsh
//                   https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrInpatientMedicationRequest.fsh
//
// Profil EU Core disponible :
//   https://hl7.eu/fhir/base/StructureDefinition/medicationRequest-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreMedicationRequestProfile
Parent: MedicationRequest
Id: fr-core-medication-request
Title: "FR Core MedicationRequest Profile"
Description: "FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration."

* intent = #order // Doc Core

// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant prescription"

* status 1..1 // FHIR R4 base : 1..1 — cardinalité identique
* status ^short = "Statut"
// Doc Core : status = #completed — INCOMPATIBILITÉ avec ePrescription qui ne fixe pas la valeur
// FRCore : valeur fixe supprimée ; le statut peut être active, completed, stopped, on-hold, etc.

* authoredOn 1..1 // ePrescription : 1.. (FHIR R4 base : 0..1)
* authoredOn ^short = "Date de prescription"

* requester 1..1 // ePrescription : 1.. (FHIR R4 base : 0..1)
* requester ^short = "Prescripteur"
// Doc Core : Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
// ePrescription : Reference($FrCorePractitioner) uniquement
// FRCore : base FHIR en attendant merge des profils Practitioner/PractitionerRole
// * requester only Reference(FRCorePractitionerRoleProfile or FRCorePractitionerProfile) // à décommenter après merge
* requester only Reference(Practitioner or PractitionerRole or Organization or Patient or RelatedPerson or Device)

// Extension R5 backport : représentation lisible de la posologie (ePrescription)
* extension contains $medicationrequest-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
* extension[renderedDosageInstruction] ^short = "Représentation lisible de la posologie"

// Extension intention globale du traitement (ePrescription)
* extension contains $fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "Intention globale du traitement"

// Médicament
// Doc Core : CodeableConcept or Reference(FRMedicationDocument)
// ePrescription : from fr-medication-code (required) + medicationReference only fr-medication-non/compound
// FRCore : Reference vers FRCoreMedicationProfile sans binding strict sur CodeableConcept
* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile) // FRCore (remplace Reference(FRMedicationDocument))
* medication[x] ^short = "Produit de santé"

* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile) // Doc Core : Reference(FRPatientDocument or FRPatientINSDocument)
* subject ^short = "Patient"

// Doc Core : Reference(FREncounterCareDocument) — ePrescription : Reference($FrCoreEncounter)
// * encounter only Reference(FRCoreEncounterProfile) // FRCoreEncounterProfile non encore mergée dans FRCore
* encounter only Reference(Encounter) // FHIR R4 base
* encounter ^short = "Contexte de soin"

// Motif du traitement — slicing Doc Core (discriminateur par display : à revoir)
* reasonReference ^slicing.discriminator.type = #pattern
* reasonReference ^slicing.discriminator.path = "display"
* reasonReference ^slicing.rules = #open

* reasonReference contains
    ald 0..1 and
    accidentTravail 0..1 and
    prevention 0..1

// Doc Core : Reference(FRConditionDocument) — FRCore : Condition base (FRCoreConditionProfile non encore mergée)
// * reasonReference[ald] only Reference(FRCoreConditionProfile) // à décommenter après merge
* reasonReference[ald] only Reference(Condition)
* reasonReference[ald] ^short = "En rapport avec une Affection Longue Durée (ALD)." // Doc Core
* reasonReference[ald] ^definition = "S'il s'agit d'une Affection Longue Durée (ALD) il faut préciser le problème"

// Doc Core : Reference(FRObservationWorkRelatedAccidentDocument) — FRCore : Observation base
* reasonReference[accidentTravail] only Reference(Observation)
* reasonReference[accidentTravail] ^short = "En rapport avec accident travail" // Doc Core

// Doc Core : Reference(FRConditionDocument) — FRCore : Condition base
// * reasonReference[prevention] only Reference(FRCoreConditionProfile) // à décommenter après merge
* reasonReference[prevention] only Reference(Condition)
* reasonReference[prevention] ^short = "En rapport avec la prévention" // Doc Core

* instantiatesUri ^short = "Référence de la prescription" // Doc Core

* basedOn 0..1 // Doc Core
* basedOn ^short = "Référence à un item du plan de traitement."
* basedOn only Reference(FRCoreMedicationRequestProfile)

// Posologie — 1..* requis (ePrescription : 1..)
* dosageInstruction 1..* // ePrescription : 1.. (FHIR R4 base : 0..*)
// ePrescription : dosageInstruction.patientInstruction ..0 — FRCore ne restrict pas
* dosageInstruction.sequence ^short = "Séquence (dosages progressifs/fractionnés)" // Doc Core
* dosageInstruction.timing ^short = "Durée du traitement et fréquence d'administration." // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod ^short = "Durée du traitement" // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "Date de début du traitement" // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "Date de fin du traitement" // Doc Core
* dosageInstruction.asNeeded[x] ^short = "Dosage conditionnel" // Doc Core
* dosageInstruction.route from FRCoreValueSetEDQM (extensible) // Doc Core
* dosageInstruction.route ^short = "Voie d'administration"
// ePrescription : from FrRouteOfAdministration (extensible) — même base EDQM, convergence
* dosageInstruction.method ^short = "Méthode d'administration" // ePrescription (FrMethodOfAdministration = codes from EDQM)
* dosageInstruction.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible) // Doc Core
* dosageInstruction.site ^short = "Région anatomique d'administration"
* dosageInstruction.doseAndRate.doseRange ^short = "Dose à administrer" // Doc Core
* dosageInstruction.doseAndRate.doseRange.low 1..1 // Doc Core (FHIR R4 base : 0..1)
* dosageInstruction.doseAndRate.doseRange.high 1..1 // Doc Core (FHIR R4 base : 0..1)
* dosageInstruction.doseAndRate.rateRange ^short = "Rythme d'administration" // Doc Core
* dosageInstruction.doseAndRate.rateRange.low 1..1 // Doc Core (FHIR R4 base : 0..1)
* dosageInstruction.doseAndRate.rateRange.high 1..1 // Doc Core (FHIR R4 base : 0..1)
* dosageInstruction.maxDosePerPeriod ^short = "Dose maximale" // Doc Core
* dosageInstruction.maxDosePerPeriod.numerator 1..1 // Doc Core (FHIR R4 base : 0..1)
* dosageInstruction.maxDosePerPeriod.denominator 1..1 // Doc Core (FHIR R4 base : 0..1)
// ePrescription : doseAndRate.* only FrRatioMedication/FrSimpleQuantityMedication/FrRangeMedication — types ePrescription-spécifiques, non portés dans FRCore

// Instructions au patient (Doc Core)
* dosageInstruction.additionalInstruction ^slicing.discriminator.type = #pattern
* dosageInstruction.additionalInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction.additionalInstruction ^slicing.rules = #open

* dosageInstruction.additionalInstruction contains
    instructionsPatient 0..1 and
    precondition 0..1

* dosageInstruction.additionalInstruction[instructionsPatient] ^short = "Instruction au patient" // Doc Core
* dosageInstruction.additionalInstruction[instructionsPatient].coding 1..1 // Doc Core (FHIR R4 base : 0..*)
* dosageInstruction.additionalInstruction[instructionsPatient].coding = $v3-ActCode#PINSTRUCT "Patient Medication Instructions"
* dosageInstruction.additionalInstruction[precondition] ^short = "Condition préalable à l'utilisation du médicament" // Doc Core
* dosageInstruction.additionalInstruction[precondition].text = "Permet de décrire les conditions préalables à l'utilisation du médicament."

// Dispensation (Doc Core)
* dispenseRequest.extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1 // Doc Core
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation 1..1 // Doc Core — sous-élément obligatoire si extension présente
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation ^short = "Instructions au dispensateur"
* dispenseRequest.quantity ^short = "Quantité à dispenser" // Doc Core
* dispenseRequest.validityPeriod ^short = "Période de validité" // Doc Core
* dispenseRequest.numberOfRepeatsAllowed ^short = "Nombre de renouvellement(s) possible(s)" // Doc Core

* substitution 1..1 // Doc Core (FHIR R4 base : 0..1, EU Core : 0..1)
* substitution ^short = "Autorisation de substitution"
* substitution.allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis // Doc Core
* substitution.reason.text ^short = "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)." // Doc Core

// Extensions métier (Doc Core)
* extension contains $ihe-ext-offLabel named horsAMM 0..*
* extension[horsAMM] ^short = "Hors Autorisation de mise sur le marché"

// Doc Core : FRNotCoveredExtension
* extension contains FRCoreNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"
