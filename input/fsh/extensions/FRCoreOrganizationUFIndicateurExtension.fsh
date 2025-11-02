Extension: FRCoreOrganizationUFIndicateurExtension
Id: fr-core-organization-uf-indicateur
Title: "FR Core Organization Extension - Indicateur d'une unité fonctionnelle"
Description: "Indicateur permettant de définir si une UF est d'hébergement, médicale, administrative ou de magasin."
Context: FRCoreOrganizationUFProfile

* ^version = "1.0.0"
* ^status = #active

* valueCodeableConcept 0..1
* valueCodeableConcept from FRCoreValueSetOrganizationUFIndicateur (required)
* valueCodeableConcept ^short = "Indicateur d'une unité fonctionnelle"
* valueCodeableConcept ^definition = "Indicateur d'une unité fonctionnelle"
