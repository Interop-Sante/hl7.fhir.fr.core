Instance: hopitaltest-pole-1150-med-spe
InstanceOf: FRCoreOrganizationProfile
Usage: #example

//extension[members].valueReference = Reference(Organization/hopitaltest-uf-4420-dialyse)
* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].extension[=].valueReference = Reference(Organization/hopitaltest-uf-4420-dialyse)
* extension[=].extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].extension[=].valueReference = Reference(Organization/hopitaltest-uac-4420-uac-01)

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "1150"
* type = $fr-core-v2-3307#POLE "Pole"
* type.text = "POLE"
* name = "Pole Medecines spécialisées"
