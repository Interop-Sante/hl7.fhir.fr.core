// A supprimer au profit de ceux de l'IG annuaire ?

Profile: FRCorePractitionerRoleExercice
Parent: PractitionerRole
Id: fr-core-practitioner-role-exercice
Title: "FR Core Practitioner Role Exercice"
Description: "Profil of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization | Spécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation."
* ^status = #draft

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-practitioner-role-exercice)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FRCoreServiceTypeDurationExtension named serviceTypeDuration 0..*

* identifier.system ^short = "The namespace for the identifier value | Namespace du RASS)"
* identifier.system ^definition = "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nNamespace du RASS)"

* practitioner only Reference(FRCorePractitionerProfile)
* organization only Reference(FRCoreOrganizationProfile)

* code from $fr-practitioner-role-exercice (preferred)
* code ^short = "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation"
* code ^definition = "The role a person plays representing an organization | Situation d'exercice (Fonction dans le NOS)"

* specialty from $fr-practitioner-specialty (required)
* specialty ^short = "Specific specialty associated with the organization | spécialité ordinale du professionnel de santé au sein de l'organisation"


* location only Reference(FRCoreLocationProfile)
* healthcareService only Reference(FRCoreHealthcareServiceProfile)

* telecom only FRCoreContactPointProfile
* telecom ^short = "Details of a Technology mediated contact point | Coordonnées électroniques détaillées"