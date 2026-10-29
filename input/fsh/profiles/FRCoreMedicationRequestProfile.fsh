Profile: FRCoreMedicationRequestProfile
Parent: MedicationRequestEuCore
Id: fr-core-medication-request
Title: "FR Core MedicationRequest Profile"
Description: "FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-medication-request)

* status ^short = "Statut"

* authoredOn ^short = "Date de prescription"

* requester ^short = "Prescripteur"

* requester only Reference(FRCorePractitionerProfile or FRCorePractitionerRoleProfile or FRCoreOrganizationProfile or FRCorePatientProfile or FRCoreRelatedPersonProfile or RelatedPerson)

// Extension R5 backport : représentation lisible de la posologie (ePrescription)
* extension[renderedDosageInstruction] ^short = "Représentation lisible de la posologie"

// Extension intention globale du traitement (ePrescription)
* extension contains $fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "Intention globale du traitement"

// Médicament
* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile or MedicationEuCore)
* medication[x] ^short = "Produit de santé"

* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile)
* subject ^short = "Patient"

* encounter ^short = "Contexte de soin"

// Motif du traitement

* reasonReference only Reference(Observation or FRCoreConditionProfile or Condition)

* instantiatesUri ^short = "Référence de la prescription"

* basedOn ^short = "Référence à un item du plan de traitement."
* basedOn only Reference(FRCoreMedicationRequestProfile or CarePlan or FRCoreServiceRequestProfile or ServiceRequest or ImmunizationRecommendation)

// Posologie — 1..* requis (ePrescription : 1..)
* dosageInstruction 1..* // ePrescription : 1.. (FHIR R4 base : 0..*)

// Cet attribut a été interdit pour éviter la difficulté d'avoir à choisir entre patientInstruction et additionalInstruction.
* dosageInstruction.patientInstruction ..0

// ePrescription : dosageInstruction.patientInstruction ..0 — FRCore ne restrict pas
* dosageInstruction.sequence ^short = "Séquence (dosages progressifs/fractionnés)"
* dosageInstruction.timing ^short = "Durée du traitement et fréquence d'administration."
* dosageInstruction.timing.repeat.boundsPeriod ^short = "Durée du traitement"
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "Date de début du traitement"
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "Date de fin du traitement"
* dosageInstruction.timing.repeat.extension contains $fr-additional-when-values named AdditionalWhenValues 0..1 // ePrescription
* dosageInstruction.timing.repeat.extension[AdditionalWhenValues] ^short = "Codes additionnels pour l'occurrence, issus de PN13"
* dosageInstruction.asNeeded[x] ^short = "Dosage conditionnel"
* dosageInstruction.route from FRCoreValueSetEDQMRoute (extensible)
* dosageInstruction.route ^short = "Voie d'administration"

// ePrescription : from FrRouteOfAdministration (extensible) — même base EDQM, convergence
* dosageInstruction.method ^short = "Méthode d'administration" // ePrescription (FrMethodOfAdministration = codes from EDQM)
* dosageInstruction.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible)
* dosageInstruction.site ^short = "Région anatomique d'administration"
* dosageInstruction.doseAndRate.doseRange ^short = "Dose à administrer"
* dosageInstruction.doseAndRate.rateRange ^short = "Rythme d'administration"
* dosageInstruction.maxDosePerPeriod ^short = "Dose maximale"

* dosageInstruction.additionalInstruction ^short = "Informations supplémentaires utilisables pour instructions au Patien ou pércondition préalables à l'utilisation du médicament"

* dispenseRequest.extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation 1..1
* dispenseRequest.extension[dispenserInstructionR5].valueAnnotation ^short = "Instructions au dispensateur"
* dispenseRequest.quantity ^short = "Quantité à dispenser"
* dispenseRequest.validityPeriod ^short = "Période de validité"
* dispenseRequest.numberOfRepeatsAllowed ^short = "Nombre de renouvellement(s) possible(s)"

* substitution ^short = "Autorisation de substitution"
* substitution.allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis
* substitution.reason.text ^short = "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."

* extension contains $ihe-ext-offLabel named offLabelUse 0..1
* extension[offLabelUse] ^short = "Usage hors Autorisation de Mise sur le Marché (hors AMM)"
* extension[offLabelUse].extension[isOffLabelUse].valueBoolean ^short = "Indicateur hors AMM (doit être renseigné si l'extension est présente)"
* extension[offLabelUse].extension[reason].valueCodeableConcept ^short = "Motif du hors AMM"

* extension contains FRCoreNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"
