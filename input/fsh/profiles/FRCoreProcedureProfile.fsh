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
// Contrainte relâchée dans FRCore — en Doc Core : Reference(Observation or FRMedicationAdministrationDocument or FRProcedureDocument)

* status ^short = "Statut de l'acte"

* code ^short = "Code d'acte"
* code from FRCoreValueSetProcedureCode (preferred) // EU Core : binding preferred identique (ValueSet différent : procedures-uv-ips, remplacé par CCAM/NCIT/CISIS)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
Si l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

* reasonReference ^short = "Motif de l'acte / Justification de la réalisation de l'acte"
// Cible héritée de procedure-eu-core : Reference(Condition EU Core or Observation or Procedure EU Core or DiagnosticReport or DocumentReference)
// Condition EU Core non re-resserré vers FRCoreConditionProfile : pas encore mergé sur main (branche nr-doc-core-condition)

* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile)
// EU Core : Reference(Patient EU Core) — FRCorePatientProfile/FRCorePatientINSProfile héritent directement de patient-eu-core
// Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] ^short = "Date de l'acte"

* performer.actor only Reference(FRCorePractitionerRoleProfile or FRCorePractitionerProfile or Device or FRCorePatientProfile or RelatedPerson or FRCoreOrganizationProfile)
// EU Core : Reference(PractitionerRole EU Core or Practitioner EU Core or Device or Patient EU Core or RelatedPerson or Organization EU Core)
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
* encounter only Reference(Encounter) // * encounter only Reference(FRCoreEncounterProfile)

// Difficulté de l'acte
* extension contains FRCoreProcedureDifficultyExtension named difficulte 0..1
* extension[difficulte] ^short = "Difficulté de l'acte"
