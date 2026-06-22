// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/extensions/FRProcedureDifficultyExtension.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────
Extension: FRCoreProcedureDifficultyExtension
Id: fr-core-procedure-difficulty-extension
Title: "FR Core Procedure Difficulty Extension"
Description: "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* value[x] ^short = "Difficulté de l'acte"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-difficulte-cisis (example)
