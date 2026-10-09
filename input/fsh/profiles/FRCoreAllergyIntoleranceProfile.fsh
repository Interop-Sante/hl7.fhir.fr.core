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

// Additional binding - Allergie : CIM-11 Chapitre 04, Bloc Affections allergiques ou d'hypersensibilité
* reaction.manifestation ^binding.extension[+].extension[0].url = "purpose"
* reaction.manifestation ^binding.extension[=].extension[=].valueCode = #extensible
* reaction.manifestation ^binding.extension[=].extension[+].url = "valueSet"
* reaction.manifestation ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetAllergyIntoleranceManifestationAllergie)
* reaction.manifestation ^binding.extension[=].extension[+].url = "documentation"
* reaction.manifestation ^binding.extension[=].extension[=].valueMarkdown = "Si type = allergie : CIM-11 Chapitre 04, Bloc Affections allergiques ou d'hypersensibilité."
* reaction.manifestation ^binding.extension[=].extension[+].url = "shortDoco"
* reaction.manifestation ^binding.extension[=].extension[=].valueString = "Allergie"
* reaction.manifestation ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - Hypersensibilité non allergique : CIM-11 Chapitre 21
* reaction.manifestation ^binding.extension[+].extension[0].url = "purpose"
* reaction.manifestation ^binding.extension[=].extension[=].valueCode = #extensible
* reaction.manifestation ^binding.extension[=].extension[+].url = "valueSet"
* reaction.manifestation ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetAllergyIntoleranceManifestationHypersensibilite)
* reaction.manifestation ^binding.extension[=].extension[+].url = "documentation"
* reaction.manifestation ^binding.extension[=].extension[=].valueMarkdown = "Si type = hypersensibilité non allergique : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
* reaction.manifestation ^binding.extension[=].extension[+].url = "shortDoco"
* reaction.manifestation ^binding.extension[=].extension[=].valueString = "Hypersensibilité non allergique"
* reaction.manifestation ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - Intolérance : CIM-11 Chapitre 21
* reaction.manifestation ^binding.extension[+].extension[0].url = "purpose"
* reaction.manifestation ^binding.extension[=].extension[=].valueCode = #extensible
* reaction.manifestation ^binding.extension[=].extension[+].url = "valueSet"
* reaction.manifestation ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetAllergyIntoleranceManifestationIntolerance)
* reaction.manifestation ^binding.extension[=].extension[+].url = "documentation"
* reaction.manifestation ^binding.extension[=].extension[=].valueMarkdown = "Si type = intolérance : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
* reaction.manifestation ^binding.extension[=].extension[+].url = "shortDoco"
* reaction.manifestation ^binding.extension[=].extension[=].valueString = "Intolérance"
* reaction.manifestation ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - Idiosyncrasie : CIM-11 Chapitre 21
* reaction.manifestation ^binding.extension[+].extension[0].url = "purpose"
* reaction.manifestation ^binding.extension[=].extension[=].valueCode = #extensible
* reaction.manifestation ^binding.extension[=].extension[+].url = "valueSet"
* reaction.manifestation ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetAllergyIntoleranceManifestationIdiosyncrasie)
* reaction.manifestation ^binding.extension[=].extension[+].url = "documentation"
* reaction.manifestation ^binding.extension[=].extension[=].valueMarkdown = "Si type = idiosyncrasie : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
* reaction.manifestation ^binding.extension[=].extension[+].url = "shortDoco"
* reaction.manifestation ^binding.extension[=].extension[=].valueString = "Idiosyncrasie"
* reaction.manifestation ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* reaction.severity ^short = "Sévérité"

* reaction.onset ^short = "Dates de début et de fin du problème"

// Invariants : quel JDV de manifestation utiliser selon AllergyIntolerance.type
* obeys fr-core-allergy-intolerance-1
* obeys fr-core-allergy-intolerance-2
* obeys fr-core-allergy-intolerance-3
* obeys fr-core-allergy-intolerance-4

Invariant: fr-core-allergy-intolerance-1
Description: "Si type = allergie, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 04, Bloc Affections allergiques ou d'hypersensibilité (fr-core-vs-allergyintolerance-manifestation-allergie)."
* severity = #warning
* expression = "type = 'allergy' implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-allergie'))"

Invariant: fr-core-allergy-intolerance-2
Description: "Si type = hypersensibilité non allergique, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-hypersensibilite)."
* severity = #warning
* expression = "type.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type').value.coding.exists(system = 'http://snomed.info/sct' and code = '609396006') implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-hypersensibilite'))"

Invariant: fr-core-allergy-intolerance-3
Description: "Si type = intolérance, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-intolerance)."
* severity = #warning
* expression = "type = 'intolerance' implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-intolerance'))"

Invariant: fr-core-allergy-intolerance-4
Description: "Si type = idiosyncrasie, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-idiosyncrasie)."
* severity = #warning
* expression = "type.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type').value.coding.exists(system = 'http://snomed.info/sct' and code = '56840009') implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-idiosyncrasie'))"
