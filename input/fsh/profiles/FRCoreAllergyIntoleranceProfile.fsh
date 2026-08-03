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
// Binding required R4 natif inchangé (allergy | intolerance uniquement) : FRCoreValueSetAllergyIntoleranceType contient des codes (idiosyncrasie, hypersensibilité non allergique) interdits par ce binding en R4. En R5 le binding passe à preferred (https://hl7.org/fhir/R5/allergyintolerance.html) : ces codes sont donc portés via l'extension backport ci-dessous plutôt que sur l'élément natif.

// Extension officielle xver-r5.r4 (backport AllergyIntolerance.type R5, CodeableConcept, binding preferred) — https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-AllergyIntolerance.html
* type.extension contains $allergy-intolerance-type-r5 named type 0..1
* type.extension[type].valueCodeableConcept from FRCoreValueSetAllergyIntoleranceType (preferred)
* type.extension[type] ^short = "Type d'allergie ou d'intolérance étendu (backport R5 : idiosyncrasie, hypersensibilité non allergique)"

* code 1..1 // EU Core : 1..1 (FHIR R5 base : 0..1)
* code ^short = "agent allergique"
* code from FRCoreValueSetAllergyCode (extensible)
* onset[x] ^short = "Date d'identification d'allergie ou d'intolérance"
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)

* criticality ^short = "Criticité"

* verificationStatus ^short = "Certitude"

* clinicalStatus ^short = "Statut clinique"

* patient ^short = "Patient concerné par l'allergie ou intolérance"
* patient only Reference(FRCorePatientINSProfile or FRCorePatientProfile)

* reaction ^short = "Réaction observée"

* reaction.substance ^short = "Substance responsable de la réaction"
* reaction.substance from FRCoreValueSetAllergySubstance (required)

* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l'événement"

* reaction.severity ^short = "Sévérité"

* reaction.onset ^short = "Dates de début et de fin du problème"
