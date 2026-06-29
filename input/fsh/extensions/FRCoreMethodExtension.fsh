// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/extensions/FRMethodExtension.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────
Extension: FRCoreMethodExtension
Id: fr-core-method-extension
Title: "FR Core Method Extension"
Description: "Extension permettant d'indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d'imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc."
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis
* valueCodeableConcept ^short = "Méthode utilisée"
