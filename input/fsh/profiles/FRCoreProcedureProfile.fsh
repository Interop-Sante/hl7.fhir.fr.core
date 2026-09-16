// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRProcedureDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/procedure-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreProcedureProfile
Parent: procedure-eu-core
Id: fr-core-procedure
Title: "FR Core Procedure Profile"
Description: "FRCoreProcedureProfile est un profil utilisé pour décrire un acte planifié ou réalisé."

* partOf ^short = "Événement associé : score (Cormack ou ASA), administration de médicament ou procédure associée à l'acte (ex. produit administré lors d'un acte d'imagerie)."

* status ^short = "Statut de l'acte"

* code ^short = "Code d'acte"
* code from FRCoreValueSetProcedureCode (preferred) // EU Core : binding preferred identique (ValueSet différent : procedures-uv-ips, remplacé par CCAM/CISIS + additional bindings SNOMED CT/Autre acte)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
CCAM : terminologie facturante pour la production d'actes.
SNOMED CT (additional binding) : terminologie pour la demande d'acte ou de report d'actes à des fins internationales, en cours de validation en Europe.
Si l'acte n'est pas trouvé dans CCAM ni SNOMED CT, utiliser le code CISIS 'GEN-092.04.13' (Autre acte, additional binding)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

// Additional binding - SNOMED CT : demande d'acte ou report d'actes à des fins internationales (en cours de validation en Europe)
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #extensible
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetProcedureCodeSnomed)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "SNOMED CT : terminologie pour la demande d'acte ou de report d'actes à des fins internationales, en cours de validation en Europe. Périmètre repris du ValueSet IPS procedures-uv-ips (parent EU Core)."
* code ^binding.extension[=].extension[+].url = "shortDoco"
* code ^binding.extension[=].extension[=].valueString = "Demande / report d'acte à des fins internationales"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Additional binding - CISIS "Autre acte" : repli si l'acte n'est pas trouvé dans CCAM ni SNOMED CT
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #extensible
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(FRCoreValueSetProcedureCodeAutre)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "CISIS GEN-092.04.13 'Autre acte' : à utiliser si l'acte n'est pas trouvé dans CCAM ni SNOMED CT."
* code ^binding.extension[=].extension[+].url = "shortDoco"
* code ^binding.extension[=].extension[=].valueString = "Autre acte"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* reasonReference ^short = "Motif de l'acte / Justification de la réalisation de l'acte"
// Cible héritée de procedure-eu-core : Reference(Condition EU Core or Observation or Procedure EU Core or DiagnosticReport or DocumentReference)
// Condition EU Core non re-resserré vers FRCoreConditionProfile : pas encore mergé sur main (branche nr-doc-core-condition)

* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile)

* performed[x] ^short = "Date de l'acte"

* performer.actor only Reference(FRCorePractitionerRoleProfile or FRCorePractitionerProfile or Device or FRCorePatientProfile or RelatedPerson or FRCoreOrganizationProfile)
* performer.onBehalfOf only Reference(FRCoreOrganizationProfile) // EU Core : Reference(Organization EU Core)

* extension contains FRCoreProcedurePriorityExtension named priority 0..1

// Voie d'abord : extension standard FHIR (procedure-approachBodySite)
* extension contains
    http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure named approachBodySite 0..*
* extension[approachBodySite] ^short = "Voie d'abord"
* extension[approachBodySite].valueReference only Reference(BodyStructure) // * extension[approachBodySite].valueReference only Reference(FRCoreBodyStructureProfile)

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible) // FRCore plus stricte que le binding preferred hérité de procedure-eu-core (même ValueSet)
// Hérités de procedure-eu-core : bodySite.extension (http://hl7.org/fhir/StructureDefinition/bodySite) ciblant BodyStructure EU Core
// et l'invariant eu-bodysite-1 (code OU référence à une BodyStructure, jamais les deux)

// Rencontre associée à l'acte
* encounter ^short = "Rencontre associée à l'acte"
* encounter only Reference(FRCoreEncounterProfile)

// Difficulté de l'acte
* extension contains FRCoreProcedureDifficultyExtension named difficulte 0..1
* extension[difficulte] ^short = "Difficulté de l'acte"
