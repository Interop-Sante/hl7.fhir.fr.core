// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRMedicationRequestDocument.fsh
// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRCoreMedicationRequestProfile
Parent: MedicationRequest
Id: fr-core-medication-request
Title: "FR Core MedicationRequest Profile"
Description: "FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration."

// Profil EU Core disponible : https://hl7.eu/fhir/base/StructureDefinition/medicationRequest-eu-core
* intent = #order
// * identifier 1..* // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant prescription"
* status 1..1 // FHIR R5 base : 1..1 — cardinalité identique
* status ^short = "Statut"
* status = #completed
// Dosages progressifs, fractionnés
  * sequence
  * timing
    * ^short = "Durée du traitement et fréquence d'administration."
    * repeat
      * boundsPeriod ^short = "Durée du traitement"
        * start ^short = "Date de début du traitement"
        * end ^short = "Date de fin du traitement"
    //Fréquence d'administration
      * frequency
      // @value , @unit
      * period
      * periodUnit
      * when
      * offset
  // Dosages conditionnels
  * asNeeded[x]
  * route
  * route from FRValueSetEDQMDocument
  * route ^short = "Voie d'administration"
  * site
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * doseAndRate.doseRange
  * doseAndRate.doseRange ^short = "Dose à administrer"
    * low 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
    * high 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * doseAndRate.rateRange
  * doseAndRate.rateRange ^short = "Rythme d'administration"
    * low 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
    * high 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * maxDosePerPeriod
  * maxDosePerPeriod ^short = "Dose maximale"
  * maxDosePerPeriod.numerator 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
  * maxDosePerPeriod.denominator 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)

  * ^short = "Nombre de renouvellement(s) possible(s)"
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
  * ^short = "Produit de santé"
* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
* encounter only Reference(FREncounterCareDocument)
// --- Prescripteur : Auteur du document Prescription ---
* requester ^short = "Prescripteur"
* requester only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)

// Motif du traitement
  * ^short = "Motif du traitement"
* reasonReference only Reference(FRConditionDocument or Observation)

// document externe
* instantiatesUri ^short = "Référence de la prescription"

* basedOn 0..1
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
* basedOn only Reference(FRCoreMedicationRequestProfile)

* dosageInstruction.additionalInstruction ^slicing.discriminator.type = #pattern
* dosageInstruction.additionalInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction.additionalInstruction ^slicing.rules = #open

* dosageInstruction.additionalInstruction contains
    instructionsPatient 0..1 and
    precondition 0..1

  * ^short = "Instruction au patient"
  * coding 1..1 // Contrainte du slice additionalInstruction[instructionsPatient] — ajouté par IG Document Core (FHIR R5 base CodeableConcept.coding : 0..*)
  * coding = $v3-ActCode#PINSTRUCT "Patient Medication Instructions"

  * ^short = "Condition préalable à l'utilisation du médicament"
  * text = "Permet de décrire les conditions préalables à l'utilisation du médicament."

  * extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1
  * extension[dispenserInstructionR5].valueAnnotation 1..1 // Sous-élément d'extension obligatoire — contrainte ajoutée par IG Document Core
    * ^short = "instructions au dispensateur"
  * quantity
    * ^short = "Quantité à dispenser"
  * validityPeriod
    * ^short = "Période de validité"
  * numberOfRepeatsAllowed
    * ^short = "Nombre de renouvellement(s) possible(s)"
* substitution 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1, EU Core : 0..1)
  * allowed[x]
  * ^short = "Autorisation de substitution"
  * allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis
  * reason
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

* extension contains $ihe-ext-offLabel named horsAMM 0..*
* extension[horsAMM] ^short = "Hors Autorisation de mise sur le marché"

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"
