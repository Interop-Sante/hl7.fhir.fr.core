// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRAllergyIntoleranceDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/allergyIntolerance-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreAllergyIntoleranceProfile
Parent: allergyIntolerance-eu-core
Id: fr-core-allergy-intolerance
Title: "FR Core AllergyIntolerance Profile"
Description: "FRCoreAllergyIntoleranceProfile est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

* type ^short = "Type d'allergie ou d'intolérance"
* type from FRValueSetAllergyInoleranceTypeDocument (required)
* code 1..1 // EU Core : 1..1 (FHIR R5 base : 0..1)
* code ^short = "agent allergique"
* code from FRValueSetAllergyCodeDocument (extensible)
* onset[x] ^short = "Date d'identification d'allergie ou d'intolérance"
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)

* criticality ^short = "Criticité"

* verificationStatus ^short = "Certitude"

* clinicalStatus ^short = "Statut clinique"

* patient ^short = "Patient concerné par l'allergie ou intolérance"
* patient only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)

* reaction ^short = "Réaction observée"

* reaction.substance ^short = "Substance responsable de la réaction"
* reaction.substance from FRValueSetAllergySubstanceDocument (required)

* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l'événement"

* reaction.severity ^short = "Sévérité"

* reaction.note 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* reaction.note ^short = "Commentaire"

* reaction.onset ^short = "Dates de début et de fin du problème"
