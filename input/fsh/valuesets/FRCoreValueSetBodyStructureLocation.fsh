// Source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/valueSets/FRValueSetLocationBodyStructureDocument.fsh
// ─────────────────────────────────────────────────────────────────────────────
ValueSet: FRCoreValueSetBodyStructureLocation
Id: fr-core-vs-body-structure-location
Title: "FR Core ValueSet BodyStructure location"
Description: """
Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d'abord.
Inclut :
- Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site
- Les structures anatomiques pour voie d'abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes
"""
* insert SetValueset

* ^experimental = false

// Structures anatomiques cibles (Procedure.bodySite)
* include codes from valueset http://hl7.org/fhir/ValueSet/body-site

// Structures anatomiques pour voie d'abord (approachBodyStructure)
* include codes from valueset http://hl7.org/fhir/ValueSet/approach-site-codes
