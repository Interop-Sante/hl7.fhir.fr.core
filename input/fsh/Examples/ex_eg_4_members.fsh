Instance: hopitaltest-eg-4-members
InstanceOf: FRCoreOrganizationEtablissementProfile
Usage: #example

* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-category"
* extension[=].valueCodeableConcept.coding[0] = $TRE-R66-CategorieEtablissement#101 "Centre hospitalier régional (CHR)"
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
* extension[=].valueString = "CHRU CENTRE VILLE"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-uf-4701-endocrino-diab)
* extension[=].valueReference.type = $fr-core-v2-3307#UF
* extension[=].valueReference.display = "UF Endocrino Diabeto"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-uf-4705-nutrition")
* extension[=].valueReference.type = $fr-core-v2-3307#UF
* extension[=].valueReference.display = "UF Nutrition"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-service-11006-endocrino-diabo)
* extension[=].valueReference.type = $fr-core-v2-3307#SERVICE
* extension[=].valueReference.display = "Service Endocrino Diabeto"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-service-11007-dietetique)
* extension[=].valueReference.type = $fr-core-v2-3307#SERVICE
* extension[=].valueReference.display = "Service Dietetique"

* identifier[0].type = $fr-core-v2-0203#FINEG "FINESS d'entité géographique"
* identifier[=].system = "https://finess.esante.gouv.fr"
* identifier[=].value = "350009999"
* identifier[=].use = #official

* identifier[+].type = $fr-core-v2-0203#SIREN "Identification de l'organisation au SIREN"
* identifier[=].system = "https://sirene.fr"
* identifier[=].value = "26350007609999"
* identifier[=].use = #official


* type = $fr-core-v2-3307#LEGAL-ENTITY "Entité légale"
* type.text = "Etablissement Géographique"
* name = "CHRU CENTRE VILLE"
