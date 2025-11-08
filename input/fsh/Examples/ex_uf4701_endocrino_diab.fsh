Instance: hopitaltest-uf-4701-endocrino-diab
InstanceOf: FRCoreOrganizationUFProfile
Usage: #example
//Instance: a443da9f-4cc0-42b1-9ff8-591199b65773

* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
* extension[=].valueString = "UF Endocrino Diabeto"
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description"
* extension[=].valueString = "UF Endocrinologie et Diabétologie, spécialisée dans la prise en charge des patients diabétiques et endocriniens."
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/organization-period"
* extension[=].extension.url = "start"
* extension[=].extension.valueDateTime = "2023-01-01T00:00:00+01:00"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur-extension"
* extension[=].valueCodeableConcept.coding[0] = $fr-core-cs-uf-indicateur#HEB "Hébergement"


* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "4701"
* type = $fr-core-v2-3307#UF "Unité fonctionnelle"
* type.text = "UF"
* name = "UF Endocrino Diabeto"
* contact.telecom.system = #phone
* contact.telecom.value = "84701"
* contact.telecom.use = #work
