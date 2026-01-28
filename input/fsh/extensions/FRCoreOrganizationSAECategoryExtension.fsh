Extension: FRCoreOrganizationSAECategoryExtension
Id: fr-core-organization-sae-category
Title: "FR Core Organization Extension - Catetgorie SAE"
Description: "Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)"
* ^context.type = #element
* ^context.expression = "FRCoreOrganizationEtablissementProfile"
* valueCodeableConcept 0..1
* valueCodeableConcept from FRCoreValueSetCategorieSAEEtablissement (required)
* valueCodeableConcept ^short = "Catégorie de l'établissement de santé"
* valueCodeableConcept ^definition = "Catégorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)"
