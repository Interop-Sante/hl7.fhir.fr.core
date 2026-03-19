Instance: hopitaltest-dept-11003-endocrino
InstanceOf: FRCoreOrganizationProfile
Usage: #example

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member"
* extension[=].valueReference = Reference(Organization/hopitaltest-uf-4701-endocrino-diab)
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member"
* extension[=].valueReference = Reference(Organization/hopitaltest-uf-4705-nutrition)

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "11003"
* type = $fr-core-v2-3307#DEPARTEMENT
* name = "Département d'Endocrinologie"
