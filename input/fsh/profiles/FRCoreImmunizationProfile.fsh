// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRImmunizationDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/immunization-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreImmunizationProfile
Parent: immunization-eu-core
Id: fr-core-immunization
Title: "FR Core Immunization Profile"
Description: "FRCoreImmunizationProfile permet de décrire l'administration d'un vaccin. Il permet également de décrire pourquoi un vaccin n'a pas été réalisé."

* occurrence[x] only dateTime
* occurrence[x] ^short = "Date de la vaccination"
* occurrence[x] ^definition = "Si la date de la vaccination est inconnue, utiliser l'extension data-absent-reason précisant pourquoi elle n'est pas connue."

* route ^short = "Voie d'administration"
* route from $jdv-immunization-route-code-cisis (required)

* site ^short = "Région anatomique d'administration"
* site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis (required)

* doseQuantity ^short = "Dose administrée"

// produit de santé
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^slicing.description = "Slice CIS et autres codifications"

* vaccineCode ^short = "Vaccin. Code du produit de santé"
// Slice CIS obligatoire
* vaccineCode.coding contains cis 1..1 // Slice CIS obligatoire — contrainte ajoutée par IG Document Core (FHIR R5 base vaccineCode.coding : 0..*)
// Doc Core : FRValueSetVaccineCodeCISDocument
* vaccineCode.coding[cis] from FRCoreValueSetVaccineCodeCIS (required)

// Slice (autres codifications)
* vaccineCode.coding contains translation 0..*
// Doc Core : FRValueSetMedicationTranslationDocument
* vaccineCode.coding[translation] from FRCoreValueSetMedicationTranslation (required)
* vaccineCode.coding[translation].system 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base Coding.system : 0..1)

* lotNumber ^short = "Numéro de lot." // Doc Core
* expirationDate ^short = "Date d'expiration du produit" // Doc Core

// Commenté car spécifique document
// * performer.actor.extension contains
//     FRActorExtension named author 1..1

// --- Auteur ---
// * performer.actor.extension[author] ^short = "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)"
// * performer.actor.extension[author].extension[type].valueCode = #AUT
// * performer.actor.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

//Prescription
* extension contains $immunization-basedOn-r5 named basedOnRequestR5 0..1
* extension[basedOnRequestR5].valueReference 1..1 // Sous-élément d'extension obligatoire si l'extension est présente — contrainte ajoutée par IG Document Core
// Doc Core : Reference(FRMedicationRequestDocument)
// * extension[basedOnRequestR5].valueReference only Reference(FRCoreMedicationRequestProfile) // non encore mergée dans FRCore
* extension[basedOnRequestR5].valueReference only Reference(MedicationRequest)
* extension[basedOnRequestR5] ^short = "Prescription"

// Type de vaccination
* protocolApplied.series ^short = "Type de vaccination : BOOSTER (Rappel de vaccin) | IMMUNIZ (Vaccination sans autre précision) | INITIMMUNIZ (1ère série vaccinante)"
* protocolApplied.series from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis
// Rang de la vaccination
* protocolApplied.doseNumberPositiveInt ^short = "Rang de la vaccination"


* reasonReference only Reference(Condition) // * reasonReference only Reference(FRCoreConditionProfile)
* reasonReference ^short = "Réaction observée suite au vaccin"

// Dose d'antigène
// Problème dataType : codeableReference
/* * extension contains $immunization-administeredProduct-r5 named ImmunizationAdministeredProductR5 0..*
* extension[ImmunizationAdministeredProductR5].extension[reference].valueReference only Reference(FRCoreMedicationProfile) // FRCore (remplace Reference(FRMedicationDocument))
 */
* note 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
  * ^short = "Commentaire"
