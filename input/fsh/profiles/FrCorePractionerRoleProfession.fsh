// A supprimer au profit de ceux de l'IG annuaire ?

Profile: FrCorePractionerRoleProfession
Parent: PractitionerRole
Id: fr-core-practitioner-role-profession
Title: "FR Core Practitioner Role Profession"
Description: "Profile of the PractitionerRole resource. This profile specifies the professions of the practitioner authorized for France| Spécification du profil de la ressource PractitionerRole permettant de spécifier la ou les professions du PS autorisées pour un exercice en France."
* ^status = #draft

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "meta.profile"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-practitioner-role-profession)

* practitioner only Reference(FRCorePractitionerProfile)
* organization only Reference(FRCoreOrganizationProfile)
* code from $fr-practioner-role-profession (required)
* code ^short = "Professions which this practitioner may have"
* code ^definition = "Professions which this practitioner is authorized to perform in France. | Professions que le PS est autorisé à réaliser"
* code.extension ^slicing.discriminator.type = #value
* code.extension ^slicing.discriminator.path = "url"
* code.extension ^slicing.rules = #open
* code.extension contains FrCorePractitionerRoleCodeCategorieProfessionnelle named professionnalCategory 0..1
* specialty from $fr-practitioner-specialty (required)
* location ..0
* healthcareService ..0
* telecom ..0
* telecom only FRCoreContactPointProfile
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0