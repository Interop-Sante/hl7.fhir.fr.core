// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationRequestDocument
Parent: MedicationRequest
Id: fr-medication-request-document
Title: "MedicationRequest - FR Medication Request Document"
Description: "FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* intent = #order
* identifier 1..* MS
* identifier ^short = "Identifiant prescription"
* status 1..1 MS
* status ^short = "Statut"
* status = #completed
// Dosages progressifs, fractionnés 
* dosageInstruction
  * sequence MS
  * timing MS
    * ^short = "Durée du traitement et fréquence d'administration."
    * repeat MS
      * boundsPeriod ^short = "Durée du traitement"
        * start ^short = "Date de début du traitement"
        * end ^short = "Date de fin du traitement"
    //Fréquence d'administration
      * frequency MS
      // @value , @unit 
      * period MS
      * periodUnit MS
      * when MS
      * offset MS
  // Dosages conditionnels
  * asNeeded[x] MS 
  * route MS
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * doseAndRate.doseRange MS 
  * doseAndRate.doseRange ^short = "Dose à administrer"
    * low 1..1 MS
    * high 1..1 MS
  * doseAndRate.rateRange MS 
  * doseAndRate.rateRange ^short = "Rythme d'administration"
    * low 1..1 MS
    * high 1..1 MS
  * maxDosePerPeriod MS 
  * maxDosePerPeriod ^short = "Dose maximale"
  * maxDosePerPeriod.numerator 1..1 MS
  * maxDosePerPeriod.denominator 1..1 MS

* dispenseRequest.numberOfRepeatsAllowed MS
  * ^short = "Nombre de renouvellement(s) possible(s)"
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
  * ^short = "Produit de santé"
* subject only Reference(FRPatientDocument or FRPatientINSDocument)
* encounter only Reference(FREncounterCareDocument)
// --- Prescripteur : Auteur du document Prescription ---
* requester MS
* requester ^short = "Prescripteur"
* requester only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)

* authoredOn MS
// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

// document externe 
* instantiatesUri ^short = "Référence de la prescription"

* basedOn 0..1 MS
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
* basedOn only Reference(FRMedicationRequestDocument)

* dosageInstruction.additionalInstruction ^slicing.discriminator.type = #pattern
* dosageInstruction.additionalInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction.additionalInstruction ^slicing.rules = #open
 
* dosageInstruction.additionalInstruction contains
    instructionsPatient 0..1 MS and
    precondition 0..1
 
* dosageInstruction.additionalInstruction[instructionsPatient]
  * ^short = "Instruction au patient"
  * coding 1..1
  * coding = $v3-ActCode#PINSTRUCT "Patient Medication Instructions"
 
* dosageInstruction.additionalInstruction[precondition]
  * ^short = "Condition préalable à l'utilisation du médicament"
  * text = "Permet de décrire les conditions préalables à l'utilisation du médicament."

* dispenseRequest MS
  * extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1
  * extension[dispenserInstructionR5].valueAnnotation 1..1
    * ^short = "instructions au dispensateur"
  * quantity MS
    * ^short = "Quantité à dispenser" 
  * validityPeriod MS
    * ^short = "Période de validité"
  * numberOfRepeatsAllowed MS 
    * ^short = "Nombre de renouvellement(s) possible(s)"
* substitution 1..1 MS
  * allowed[x] MS
  * ^short = "Autorisation de substitution" 
  * allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis
  * reason MS
  * reason.text ^short = "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."

* reasonReference ^slicing.discriminator.type = #pattern
* reasonReference ^slicing.discriminator.path = "display"
* reasonReference ^slicing.rules = #open

* reasonReference contains
    ald 0..1 and
    accidentTravail 0..1 and
    prevention 0..1

* reasonReference[ald] only Reference(FRConditionDocument)
* reasonReference[ald] ^short = "En rapport avec une Affection Longue Durée (ALD)."
* reasonReference[ald] ^definition = "S'il s'agit d'une Affection Longue Durée (ALD) il faut préciser le problème"

* reasonReference[accidentTravail] only Reference(FRObservationWorkRelatedAccidentDocument)
* reasonReference[accidentTravail] ^short = "En rapport avec accident travail"

* reasonReference[prevention] only Reference(FRConditionDocument)
* reasonReference[prevention] ^short = "En rapport avec la prévention"

* extension contains $ihe-ext-offLabel named horsAMM 0..* MS
* extension[horsAMM] ^short = "Hors Autorisation de mise sur le marché"

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"