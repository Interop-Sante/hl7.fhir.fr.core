// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRServiceRequestDocument.fsh
//
// Profil EU Core (héritage direct) : non disponible
Profile: FRCoreServiceRequestProfile
Parent: ServiceRequest
Id: fr-core-service-request
Title: "FR Core ServiceRequest Profile"
Description: "FRCoreServiceRequestProfile profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins."

* category 1..* // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* category ^short = "Catégorie de la demande"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only FRAccessionNumberIdentifierDocument
* identifier[accessionNumber] ^short = "Accession Number de la demande d'examen d'imagerie"

* intent ^short =
"""
Si la demande fait partie d'un plan de soins : 'INT = order'
Si la demande est une proposition : 'PRP = proposal'
Si la demande est un objectif à atteindre : 'GOL = plan'
"""
* code 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* code ^short = "Type de la demande"
* code.coding ^short = "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d'examen ou de suivi'"
//Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20
//* code.concept = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-092.04.20 "Autre demande d'examen ou de suivi"
* occurrence[x] 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* occurrence[x] ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
* orderDetail 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* orderDetail.coding ^short = "Résultat de la demande"
// * supportingInfo ^short = "Résultat de la demande"
// * supportingInfo only Reference(Observation)

* bodySite ^short = "Cible"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* extension contains FRInterpretationExtension named interpretation 0..1
* extension[interpretation] ^short = "Interprétation"

* extension contains FRMethodExtension named method 0..1
* extension[method] ^short = "Méthode"

// Commenté car spécifique document
// * requester.extension contains FRActorExtension named author 0..1
// * requester.extension[author] ^short = "Auteur de la demande"
// * requester.extension[author].extension[type].valueCode = #AUT
// * requester.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or Device or FRDeviceAuteurDocument or FROrganizationDocument or FRRelatedPersonDocument or FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : Reference(FRPatientINSDocument or FRPatientDocument)

* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "text"
* note ^slicing.rules = #open
* note ^short = "Justification de la demande d'examen / Finalité de l'examen"

// Slices note obligatoires — contraintes ajoutées par IG Document Core (FHIR R5 base note : 0..*)
* note contains
    finaliteExamen 1..1 and
    justificationDemande 1..1

// Slice 1 : Finalité de l'examen
* note[finaliteExamen].text 1..1 // FHIR R5 base : 1..1 — cardinalité identique (Annotation.text est obligatoire)
* note[finaliteExamen].text ^short = "Finalité de l'examen"
* note[finaliteExamen] ^short = "Finalité de l'examen demandé"

// Slice 2 : Justification de la demande
* note[justificationDemande].text 1..1 // FHIR R5 base : 1..1 — cardinalité identique (Annotation.text est obligatoire)
* note[justificationDemande].text ^short = "Justification de la demande d'examen"
* note[justificationDemande] ^short = "Justification de la demande d'examen"
