Profile: FRCoreServiceRequestProfile
Parent: ServiceRequest
Id: fr-core-service-request
Title: "FR Core ServiceRequest Profile"
Description: "FRCoreServiceRequestProfile profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-service-request)

* category ^short = "Catégorie de la demande"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains accessionNumber 0..1
// Utilisation directe du DataType profile EU : https://hl7.eu/fhir/imaging/StructureDefinition/AccessionNumberIdentifierEuImaging
* identifier[accessionNumber] only AccessionNumberIdentifierEuImaging
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber] ^short = "Accession Number de la demande d'examen d'imagerie"

* code 1..1
* code ^short = "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d'examen ou de suivi'"
* occurrence[x] 1..1
* occurrence[x] ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
// Informations complémentaires sur la demande d'acte (exemple : INR cible)
* orderDetail ^short = "informations complémentaires sur la demande d'acte, exemple : INR cible"

* bodySite ^short = "Cible"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* extension contains FRCoreMethodExtension named method 0..*
* extension[method] ^short = "Méthode"

* note ^short = "Note à propos de la demande d'acte, par exemple finalité de l'examen et justification de la demande"
