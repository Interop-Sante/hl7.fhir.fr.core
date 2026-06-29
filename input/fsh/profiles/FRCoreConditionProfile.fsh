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
* clinicalStatus ^short = "Statut du problème"

* verificationStatus ^short = "Certitude"

// * category 1..1 // Remplacé par un slicing pour plus de flexibilité
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^short = "Type d'observation"
* category contains problemeCisis 0..*
* category[problemeCisis] from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis
* category[problemeCisis] ^short = "Problème (jdv-code-probleme-cisis)"

* code 1..1 // EU Core : 1..1 (FHIR R5 base : 0..1)
* code ^short = """Identification de la condition, du problème ou du diagnostic :
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre
Réaction allergique : CIM-11 (2.16.840.1.113883.6.347) / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""
* subject ^short = "Patient concerné"
* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)

* onset[x] 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1) — À valider : suppression de la contrainte
* onsetDateTime ^short = "Date de début du problème"

* abatementDateTime ^short = "Date de fin du problème (si applicable)"

// Commenté car spécifique document
// * extension contains FRActorExtension named author 0..1
// * extension[author] ^short = "Auteur du problème"
// * extension[author].extension[type].valueCode = #AUT
// * extension[author].extension[actor].valueReference only Reference(FRCorePractitionerRoleProfile)

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* severity ^short = "Sévérité"
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis

// * evidence.detail only Reference(FRDocumentReferenceDocument) // Commenté : profil FRDocumentReferenceDocument inexistant — à créer

* stage.summary ^short = "Statut clinique du patient"
* stage.summary from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)

* note 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*) Proposition --> repasser à 0..*
* note ^short = "Commentaire"
