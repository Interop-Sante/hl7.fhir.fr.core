// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRBodyStructureDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreBodyStructureProfile
Parent: bodyStructure-eu-core
Id: fr-core-body-structure
Title: "FR Core BodyStructure Profile"
Description: "FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique."

* extension[includedStructure].extension[structure] ^short = "Localisation anatomique ou voie d'abord"
* extension[includedStructure].extension[structure].value[x] from FRCoreValueSetBodyStructureLocation (extensible)

* extension[includedStructure].extension[qualifier] ^short = "Modificateurs topographiques"
* extension[includedStructure].extension[qualifier].value[x] from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)
