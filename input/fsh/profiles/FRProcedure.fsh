Profile: FRProcedure
Parent: Procedure
Id: fr-procedure
Title: "Procedure - FR Procedure"
Description: "FRProcedure est un profil utilisé pour décrire un acte planifié ou réalisé."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// * identifier 1.. // Contrainte relâchée dans FRCore pour laisser la liberté aux implémenteurs et aux spécifications héritantes
* identifier ^short = "Identifiant"

* partOf ^short = "Observation de score ou administration de médicament associée à l'acte (ex. : produit administré lors d'un acte d'imagerie)."
* partOf only Reference(Observation or FRMedicationAdministrationDocument)

* status ^short = "Statut de l'acte"

* code 1..1
* code ^short = "Code d'acte"
* code from FRValueSetProcedureCodeDocument (preferred)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
Si l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

* reasonReference ^short = "Motif de l'acte / Justification de la réalisation de l'acte"
* reasonReference only Reference(FRConditionDocument or FRDiagnosticReportDocument or FRDiagnosticReportImagingDocument or FRDiagnosticReportBIOChapterDocument)

* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] ^short = "Date de l'acte"

* extension contains FRProcedurePriorityExtension named priority 0..1

// Voie d'abord : extension standard FHIR (procedure-approachBodySite)
* extension contains
    http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure named approachBodySite 0..*
* extension[approachBodySite] ^short = "Voie d'abord"
* extension[approachBodySite].valueReference only Reference(FRBodyStructureDocument)

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* performer.actor.extension contains
    FRActorExtension named Intervenant 0..* and
    FRActorExtension named Informateur 0..* and
    FRActorExtension named Participant 0..* and
    FRActorExtension named Dispositif 0..*

//performer
* performer.actor.extension[Intervenant] ^short = "Intervenant"
* performer.actor.extension[Intervenant].extension[type].valueCode = #PRF
* performer.actor.extension[Intervenant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
//informant
* performer.actor.extension[Informateur] ^short = "Informateur"
* performer.actor.extension[Informateur].extension[type].valueCode = #INF
* performer.actor.extension[Informateur].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)
//participant
* performer.actor.extension[Participant] ^short = "Participant"
* performer.actor.extension[Participant].extension[type].valueCode = #PART
* performer.actor.extension[Participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
//dispositif médical
* performer.actor.extension[Dispositif] ^short = "Dispositif automatique utilisé lors de l'acte"
* performer.actor.extension[Dispositif].extension[type].valueCode = #PART
* performer.actor.extension[Dispositif].extension[actor].valueReference only Reference(Device)

* recorder.extension contains FRActorExtension named author 0..1
* recorder ^short = "Auteur"
* recorder.extension[author].extension[type].valueCode = #AUT
* recorder.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

//Réference interne à un DM (REFR)
* usedReference ^short = "Réference interne à un DM"
* usedReference only Reference(Device)

// Circonstances ayant décidé de l'acte à créer (COMP)
* encounter ^short = "Circonstances ayant décidé de l'acte"
* encounter only Reference(FREncounterDocument)

// Difficulté Observation / Scores Observation
* extension contains
    FRProcedureDifficultyExtension named difficulte 0..1
* extension[difficulte] ^short = "Référence vers une Observation représentant la difficulté"
