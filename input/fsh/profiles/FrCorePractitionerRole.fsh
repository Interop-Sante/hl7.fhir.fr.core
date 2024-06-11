Profile: FrCorePractitionerRole
Parent: PractitionerRole
Id: fr-core-practitioner-role
Title: "FR Core Practitioner Role"
Description: "Profil of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization | Spécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation."

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


<<<<<<< HEAD:input/fsh/profiles/FrCorePractitionerRole.fsh
//TODO à mettre à jour avec la fusion exercice-profession : créer VS ?
* code from $fr-practioner-role-exercice (required) 
* code ^short = "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation"
* code ^definition = "The role a person plays representing an organization | Situation d'exercice (Fonction dans le NOS)"
* code ^binding.description = "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation. Correspond à la notion de Fonction dans le NOS."

// * code from $fr-practioner-role-profession (required)
// * code ^short = "Professions which this practitioner may have"
// * code ^definition = "Professions which this practitioner is authorized to perform in France. | Professions que le PS est autorisé à réaliser"
// * code.extension ^slicing.discriminator.type = #value
// * code.extension ^slicing.discriminator.path = "url"
// * code.extension ^slicing.rules = #open
// * code.extension contains FrCorePractitionerRoleCodeCategorieProfessionnelle named professionnalCategory 0..1


* specialty from fr-practitioner-specialty (required)
* specialty ^short = "Specific specialty associated with the agency | spécialité du professionnel de santé au sein de l'organisation"
* specialty ^definition = "Specific specialty associated with the agency | spécialité du professionnel de santé au sein de l'organisation."
=======
* code from $fr-practitioner-role-exercice (preferred)
* code ^short = "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation"


* specialty from $fr-practitioner-specialty (required)
* specialty ^short = "Specific specialty associated with the organization | spécialité ordinale du professionnel de santé au sein de l'organisation"



>>>>>>> main:input/fsh/profiles/FrCorePractitionerRoleExercice.fsh
* location only Reference(FRCoreLocationProfile)
* healthcareService only Reference(FRCoreHealthcareServiceProfile)

* telecom only FRCoreContactPointProfile
* telecom ^short = "Details of a Technology mediated contact point | Coordonnées électroniques détaillées"