// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRConditionDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/condition-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreConditionProfile
Parent: condition-eu-core
Id: fr-core-condition
Title: "FR Core Condition Profile"
Description: "FRCoreConditionProfile est un profil utilisé pour décrire un problème du patient (une pathologie par exemple)."

* clinicalStatus 1..1 // FHIR R5 base : 1..1 — cardinalité identique
* clinicalStatus ^short = "Statut clinique du problème"

* verificationStatus ^short = "Certitude"

* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis

* code from FRCoreValueSetConditionCodeDefaut (extensible)
* code ^short = "Identification de la condition, du problème ou du diagnostic"
* code ^definition = """CIM-10 pour les pathologies et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre.\r\n
Réaction allergique : CIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité.\r\n
Maladie rare : ORPHAcode (Orphanet) - system='https://www.orpha.net'.\r\n
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""

// Additional binding - Réaction allergique / hypersensibilité : CIM-11 (Chapitre 04)
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #extensible
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-allergie"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "CIM-11 (Chapitre 04) : utilisé uniquement pour les réactions allergiques ou d'hypersensibilité, terminologie absente de la CIM-10."
* code ^binding.extension[=].extension[+].url = "shortDoco"
* code ^binding.extension[=].extension[=].valueString = "Réaction allergique / hypersensibilité"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - Code problème médecine de ville : CISP-2, CISP-3, DRC (SFMG)
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #extensible
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-medecine-ville"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "CISP-2 (ICPC-2), CISP-3 (ICPC-3) et DRC (SFMG) : code problème en médecine de ville."
* code ^binding.extension[=].extension[+].url = "shortDoco"
* code ^binding.extension[=].extension[=].valueString = "Code problème médecine de ville"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - Maladie rare : ORPHAcode (Orphanet)
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #extensible
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-maladie-rare"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "ORPHAcode (Orphanet) : codage des maladies rares."
* code ^binding.extension[=].extension[+].url = "shortDoco"
* code ^binding.extension[=].extension[=].valueString = "Maladie rare"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* subject ^short = "Patient concerné"
* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)

* onset[x] 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)

* abatementDateTime ^short = "Date de fin du problème (si applicable)"

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

// * evidence.detail only Reference(FRDocumentReferenceDocument) // Commenté : profil FRDocumentReferenceDocument inexistant — à créer

* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "type"
* stage ^slicing.rules = #open
* stage contains clinicalStatus 0..1

* stage[clinicalStatus].type = $SCT#260998006 "Clinical staging (qualifier value)"
* stage[clinicalStatus].summary ^short = "Statut clinique du patient"
* stage[clinicalStatus].summary from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)
