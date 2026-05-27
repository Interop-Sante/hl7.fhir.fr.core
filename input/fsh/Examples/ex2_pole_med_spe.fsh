Instance: hopitaltest-pole-1150-med-spe
InstanceOf: FRCoreOrganizationProfile
Usage: #example
Description: "Exemple de pôle de médecine spécialisée (Organisation de type pôle)"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member"
* extension[=].valueReference = Reference(Organization/hopitaltest-uf-4420-dialyse)

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "1150"
* type = $fr-core-v2-3307#POLE 
* name = "Pole Medecines spécialisées"
