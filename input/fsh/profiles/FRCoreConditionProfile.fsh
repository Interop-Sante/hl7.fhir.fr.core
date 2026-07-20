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

* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis

* code 1..1 // EU Core : 1..1 (FHIR R5 base : 0..1)
* code from FRCoreValueSetConditionCode (extensible)
* code ^short = """Identification de la condition, du problème ou du diagnostic :
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre
Réaction allergique : CIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""
* subject ^short = "Patient concerné"
* subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)

* onset[x] 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* onsetDateTime ^short = "Date de début du problème"

* abatementDateTime ^short = "Date de fin du problème (si applicable)"

* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

// * evidence.detail only Reference(FRDocumentReferenceDocument) // Commenté : profil FRDocumentReferenceDocument inexistant — à créer

* stage.summary ^short = "Statut clinique du patient"
* stage.summary from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)
