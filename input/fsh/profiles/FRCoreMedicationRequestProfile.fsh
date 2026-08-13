// Sources :
//   Doc Core      : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationRequestDocument.fsh
//   ePrescription : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrMedicationRequest.fsh
//                   https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/profiles/FrInpatientMedicationRequest.fsh
// ─────────────────────────────────────────────────────────────────────────────

Profile: FRCoreMedicationRequestProfile
Parent: MedicationRequestEuCore
Id: fr-core-medication-request
Title: "FR Core MedicationRequest Profile"
Description: "FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration."

* status ^short = "Statut"

* authoredOn ^short = "Date de prescription"
// Proposition authoredOn: surcontraindre IG Document Core et ePrescription pour rendre ce champs obligatoire

* requester ^short = "Prescripteur"
// Proposition requester : surcontraindre IG Document Core et ePrescription pour rendre ce champs obligatoire

// Doc Core : Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
// ePrescription : Reference($FrCorePractitioner) uniquement
// EU Core : Reference(patient|practitioner|practitionerRole|organization-eu-core or RelatedPerson) — pas de Device
* requester only Reference(FRCorePractitionerProfile or FRCorePractitionerRoleProfile or FRCoreOrganizationProfile or FRCorePatientProfile or RelatedPerson)

// Extension R5 backport : représentation lisible de la posologie (ePrescription)
// Slice déjà posée par EU Core (même cardinalité 0..1) : pas de "contains", juste la traduction du ^short
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
* encounter ^short = "Contexte de soin"

// Motif du traitement

* reasonReference only Reference(Observation or Condition or FRCoreObservationPrevention or FRCoreObservationALD or FRCoreObservationWorkRelatedAccident ) // * reasonReference only Reference(Observation or FRCoreConditionProfile or FRCoreObservationPrevention or FRCoreObservationALD or FRCoreObservationWorkRelatedAccident)

* instantiatesUri ^short = "Référence de la prescription" // Doc Core

* basedOn ^short = "Référence à un item du plan de traitement."
* basedOn only Reference(FRCoreMedicationRequestProfile or CarePlan or ServiceRequest or ImmunizationRecommendation) // Doc Core : Reference(FRMedicationRequestDocument or FRCarePlanDocument or FRServiceRequestDocument or FRImmunizationRecommendationDocument)

// Posologie — 1..* requis (ePrescription : 1..)
* dosageInstruction 1..* // ePrescription : 1.. (FHIR R4 base : 0..*)

// Cet attribut a été interdit pour éviter la difficulté d'avoir à choisir entre patientInstruction et additionalInstruction.
* dosageInstruction.patientInstruction ..0

// ePrescription : dosageInstruction.patientInstruction ..0 — FRCore ne restrict pas
* dosageInstruction.sequence ^short = "Séquence (dosages progressifs/fractionnés)" // Doc Core
* dosageInstruction.timing ^short = "Durée du traitement et fréquence d'administration." // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod ^short = "Durée du traitement" // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "Date de début du traitement" // Doc Core
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "Date de fin du traitement" // Doc Core
* dosageInstruction.timing.repeat.extension contains $fr-additional-when-values named AdditionalWhenValues 0..1 // ePrescription
* dosageInstruction.timing.repeat.extension[AdditionalWhenValues] ^short = "Codes additionnels pour l'occurrence, issus de PN13"
* dosageInstruction.asNeeded[x] ^short = "Dosage conditionnel" // Doc Core
* dosageInstruction.route from FRCoreValueSetEDQM (extensible) // Doc Core
* dosageInstruction.route ^short = "Voie d'administration"

// ePrescription : from FrRouteOfAdministration (extensible) — même base EDQM, convergence
* dosageInstruction.method ^short = "Méthode d'administration" // ePrescription (FrMethodOfAdministration = codes from EDQM)
* dosageInstruction.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible) // Doc Core
* dosageInstruction.site ^short = "Région anatomique d'administration"
* dosageInstruction.doseAndRate.doseRange ^short = "Dose à administrer" // Doc Core
* dosageInstruction.doseAndRate.rateRange ^short = "Rythme d'administration" // Doc Core
* dosageInstruction.maxDosePerPeriod ^short = "Dose maximale" // Doc Core
// ePrescription : doseAndRate.* only FrRatioMedication/FrSimpleQuantityMedication/FrRangeMedication — types ePrescription-spécifiques, non portés dans FRCore

// Instructions au patient et préconditions (Doc Core)
* dosageInstruction.additionalInstruction ^short = "Informations supplémentaires utilisables pour instructions au Patien ou pércondition préalables à l'utilisation du médicament"

// Dispensation (Doc Core)
* dispenseRequest.extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1 // Doc Core
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation 1..1 // Doc Core — sous-élément obligatoire si extension présente
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation ^short = "Instructions au dispensateur"
* dispenseRequest.quantity ^short = "Quantité à dispenser" // Doc Core
* dispenseRequest.validityPeriod ^short = "Période de validité" // Doc Core
* dispenseRequest.numberOfRepeatsAllowed ^short = "Nombre de renouvellement(s) possible(s)" // Doc Core

* substitution ^short = "Autorisation de substitution"
* substitution.allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis // Doc Core
* substitution.reason.text ^short = "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)." // Doc Core

// Extension hors AMM : nommage aligné sur hl7.fhir.eu.mpd (MedicationRequest-eu-mpd), qui slice
// la même extension IHE MPD sous le nom "offLabelUse" en 0..1 (PR #315, revue nriss)
* extension contains $ihe-ext-offLabel named offLabelUse 0..1
* extension[offLabelUse] ^short = "Usage hors Autorisation de Mise sur le Marché (hors AMM)"
* extension[offLabelUse].extension[isOffLabelUse].valueBoolean ^short = "Indicateur hors AMM (doit être renseigné si l'extension est présente)"
* extension[offLabelUse].extension[reason].valueCodeableConcept ^short = "Motif du hors AMM"

// Doc Core : FRNotCoveredExtension
* extension contains FRCoreNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"
