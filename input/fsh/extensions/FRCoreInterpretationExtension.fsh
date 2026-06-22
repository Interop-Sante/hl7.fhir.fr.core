// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/extensions/FRInterpretationExtension.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────


/// A Discuter - Qu'est-ce qu'une interprétation de ServiceRequest ?

Extension: FRCoreInterpretationExtension
Id: fr-core-interpretation-extension
Title: "FR Core Interpretation Extension"
Description: "Extension permettant de spécifier une interprétation."
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* valueCodeableConcept ^short = "Interprétation"
