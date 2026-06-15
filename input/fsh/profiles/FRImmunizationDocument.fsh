Profile: FRImmunizationDocument
Parent: Immunization
Id: fr-immunization-document
Title: "Immunization - FR Immunization Document"
Description: "FRImmunizationDocument permet de décrire l'administration d'un vaccin. 
 - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FRMedicationAdministrationDocument sauf mentions précisées ci-après."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant" 

// à supprimer après retour de NRISS et remplacer par * protocolApplied.series
//* extension contains fr-immunization-type-extension named typeVaccination 1..1
* status MS
* status = #completed
* occurrence[x] MS
* occurrence[x] only dateTime
* occurrence[x] ^short = "Date de la vaccination"
// équivalent CDA nullFlavor
* occurrence[x] ^definition = "Si la date de la vaccination est inconnue, utiliser l’extension data-absent-reason précisant pourquoi elle n’est pas connue."
* occurrence[x].extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1
* route MS
* route ^short = "Voie d'administration"
* route from $jdv-immunization-route-code-cisis (required)
* site MS
* site ^short = "Région anatomique d'administration"
* site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis (required)
* doseQuantity MS 
* doseQuantity ^short = "Dose administrée"

// produit de santé
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^slicing.description = "Slice CIS et autres codifications"

* vaccineCode MS
* vaccineCode ^short = "Vaccin. Code du produit de santé"
// Slice CIS obligatoire
* vaccineCode.coding contains cis 1..1
* vaccineCode.coding[cis] from FRValueSetVaccineCodeCISDocument (required)

// Slice (autres codifications)
* vaccineCode.coding contains translation 0..*
* vaccineCode.coding[translation] from FRValueSetMedicationTranslationDocument (required)
* vaccineCode.coding[translation].system 1..1

//Nom de marque du produit : Extension IHE
* extension contains $ihe-ext-medication-productname named productName 1..1 MS
* extension[productName] ^short = "Nom de marque du produit." 
* lotNumber MS
  * ^short = "Numéro de lot."
* expirationDate MS 
  * ^short = "Date d'expiration du produit"

* performer MS
* performer.actor.extension contains
    FRActorExtension named author 1..1 and
    FRActorExtension named executant 0..1

// --- Auteur ---
* performer.actor.extension[author] ^short = "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)"
* performer.actor.extension[author].extension[type].valueCode = #AUT
* performer.actor.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

// --- Exécutant ---
* performer.actor.extension[executant] ^short = "Exécutant"
* performer.actor.extension[executant].extension[type].valueCode = #PRF
* performer.actor.extension[executant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

//Prescription
* extension contains $immunization-basedOn-r5 named basedOnRequestR5 0..1
* extension[basedOnRequestR5].valueReference 1..1
* extension[basedOnRequestR5].valueReference only Reference (FRMedicationRequestDocument)
* extension[basedOnRequestR5] ^short = "Prescription"

* protocolApplied MS
// Type de vaccination
* protocolApplied.series from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis
// Rang de la vaccination 
* protocolApplied.doseNumberPositiveInt MS
* protocolApplied.doseNumberPositiveInt ^short = "Rang de la vaccination"

* reasonReference MS
* reasonReference only Reference(FRConditionDocument) 
  * ^short = "Réaction observée suite au vaccin"

// Dose d'antigène
// Problème dataType : codeableReference 
/* * extension contains $immunization-administeredProduct-r5 named ImmunizationAdministeredProductR5 0..*
* extension[ImmunizationAdministeredProductR5].extension[reference].valueReference only Reference(FRMedicationDocument)
 */
* note 0..1 MS
  * ^short = "Commentaire"