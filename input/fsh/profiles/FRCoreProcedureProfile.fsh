// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRProcedureDocument.fsh
//
// Profil EU Core (héritage direct) :
//   https://hl7.eu/fhir/base/StructureDefinition/procedure-eu-core
// ─────────────────────────────────────────────────────────────────────────────
Profile: FRCoreProcedureProfile
Parent: Procedure
Id: fr-core-procedure
Title: "FR Core Procedure Profile"
Description: "FRCoreProcedureProfile est un profil utilisé pour décrire un acte planifié ou réalisé."

// * identifier 1.. // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant"

* partOf ^short = "Événement associé : score (Cormack ou ASA), administration de médicament ou procédure associée à l'acte (ex. produit administré lors d'un acte d'imagerie)."
// Contrainte relâchée dans FRCore — en Doc Core : Reference(Observation or FRMedicationAdministrationDocument or FRProcedureDocument)

* status ^short = "Statut de l'acte"

* code 1..1 // EU Core : 1..1 (FHIR R5 base : 0..1)
* code ^short = "Code d'acte"
* code from FRCoreValueSetProcedureCode (preferred)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
Si l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

* reasonReference ^short = "Motif de l'acte / Justification de la réalisation de l'acte"
// Doc Core : Reference(FRConditionDocument or FRDiagnosticReportDocument or FRDiagnosticReportImagingDocument or FRDiagnosticReportBIOChapterDocument)
// * reasonReference only Reference(FRCoreConditionProfile or DiagnosticReport) // FRCoreConditionProfile non encore mergée dans FRCore
* reasonReference only Reference(Condition or DiagnosticReport)

* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] ^short = "Date de l'acte"

* extension contains FRCoreProcedurePriorityExtension named priority 0..1

// Voie d'abord : extension standard FHIR (procedure-approachBodySite)
* extension contains
    http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure named approachBodySite 0..*
* extension[approachBodySite] ^short = "Voie d'abord"
// Doc Core : Reference(FRBodyStructureDocument)
// * extension[approachBodySite].valueReference only Reference(FRCoreBodyStructureProfile) // FRCoreBodyStructureProfile non encore mergée dans FRCore
* extension[approachBodySite].valueReference only Reference(BodyStructure)

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

// Commenté car spécifique document
// * performer.actor.extension contains
//     FRActorExtension named Intervenant 0..* and
//     FRActorExtension named Informateur 0..* and
//     FRActorExtension named Participant 0..* and
//     FRActorExtension named Dispositif 0..*

//performer
// * performer.actor.extension[Intervenant] ^short = "Intervenant"
// * performer.actor.extension[Intervenant].extension[type].valueCode = #PRF
// * performer.actor.extension[Intervenant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
//informant
// * performer.actor.extension[Informateur] ^short = "Informateur"
// * performer.actor.extension[Informateur].extension[type].valueCode = #INF
// * performer.actor.extension[Informateur].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
//participant
// * performer.actor.extension[Participant] ^short = "Participant"
// * performer.actor.extension[Participant].extension[type].valueCode = #PART
// * performer.actor.extension[Participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
//dispositif médical
// * performer.actor.extension[Dispositif] ^short = "Dispositif automatique utilisé lors de l'acte"
// * performer.actor.extension[Dispositif].extension[type].valueCode = #PART
// * performer.actor.extension[Dispositif].extension[actor].valueReference only Reference(Device)

// Commenté car spécifique document
// * recorder.extension contains FRActorExtension named author 0..1
// * recorder ^short = "Auteur"
// * recorder.extension[author].extension[type].valueCode = #AUT
// * recorder.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

// Commenté car pas nécessaire
// * usedReference ^short = "Réference à un DM"
// * usedReference only Reference(Device)

// Rencontre associée à l'acte
* encounter ^short = "Rencontre associée à l'acte"
// Doc Core : Reference(FREncounterDocument)
// * encounter only Reference(FRCoreEncounterProfile) // FRCoreEncounterProfile non encore mergée dans FRCore
* encounter only Reference(Encounter)

// Difficulté de l'acte
* extension contains FRCoreProcedureDifficultyExtension named difficulte 0..1
* extension[difficulte] ^short = "Difficulté de l'acte"
