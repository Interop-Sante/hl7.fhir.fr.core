// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/extensions/FRProcedurePriorityExtension.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────
Extension: FRCoreProcedurePriorityExtension
Id: fr-core-procedure-priority-extension
Title: "FR Core Procedure Priority Extension"
Description: "Extension permettant d'indiquer la priorité clinique de l'acte."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActPriority-cisis
