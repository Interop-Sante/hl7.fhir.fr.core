Instance: hopitaltest-ej-350005179
InstanceOf: FRCoreOrganizationEtablissementProfile
Usage: #example

* extension[sae].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-category"
* extension[sae].valueCodeableConcept.coding[0] = $TRE-R66-CategorieEtablissement#101 "Centre hospitalier régional (CHR)"
* extension[raisonSociale].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
* extension[raisonSociale].valueString = "CHRU RENNES"

* identifier[0].type = $fr-core-v2-0203#FINEJ "FINESS d'entité juridique"
* identifier[=].system = "https://finess.esante.gouv.fr"
* identifier[=].value = "350005179"
* identifier[=].use = #official

* identifier[+].type = $fr-core-v2-0203#SIREN "Identification de l'organisation au SIREN"
* identifier[=].system = "https://sirene.fr"
* identifier[=].value = "263500076"
* identifier[=].use = #official


* type = $fr-core-v2-3307#LEGAL-ENTITY "Entité légale"
* type.text = "Etablissement Juridique"
* name = "CHRU RENNES"
