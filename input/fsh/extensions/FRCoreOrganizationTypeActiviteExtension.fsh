Extension: FRCoreOrganizationTypeActiviteExtension
Id: fr-core-organization-type-activite
Title: "FR Core Organization Extension - Type d'activité"
Description: "Type d'activité d'une UF"
Context: FRCoreOrganizationUFProfile

* ^status = #active

* value[x] only CodeableConcept


* valueCodeableConcept 0..1
* valueCodeableConcept from FRCoreValueSetOrganizationTypeActivite (required)
* valueCodeableConcept ^short = "Type d'activité"
* valueCodeableConcept ^definition = "Type d'activité de l'UF"
