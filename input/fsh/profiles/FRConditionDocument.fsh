Profile: FRConditionDocument
Parent: Condition
Id: fr-condition-document
Title: "Condition - FR Condition Document"
Description: "FRConditionDocument est un profil utilisé pour décrire un problème du patient (une pathologie par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant"

* clinicalStatus 1..1 MS
* clinicalStatus ^short = "Statut du problème"

* verificationStatus MS
* verificationStatus ^short = "Certitude"

* category 1..1 MS
* category ^short = "Type d'observation"
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis

* code 1..1 MS
* code ^short = """Identification de la condition, du problème ou du diagnostic :
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre
Réaction allergique : CIM-11 (2.16.840.1.113883.6.347) / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""
* subject MS
* subject ^short = "Patient concerné"
* subject only Reference(FRPatientINSDocument or FRPatientDocument)

* onset[x] 1..1 MS
* onsetDateTime ^short = "Date de début du problème"

* abatement[x] MS
* abatementDateTime MS
* abatementDateTime ^short = "Date de fin du problème (si applicable)"

* recorder MS
* recorder.extension contains FRActorExtension named author 0..1
* recorder.extension[author] ^short = "Auteur du problème"
* recorder.extension[author].extension[type].valueCode = #AUT
* recorder.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* bodySite MS
* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* severity MS
* severity ^short = "Sévérité"
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis

* evidence.detail only Reference(FRDocumentReferenceDocument)

* stage.summary MS
* stage.summary ^short = "Statut clinique du patient"
* stage.summary from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)

* note 0..1 MS
* note ^short = "Commentaire"
