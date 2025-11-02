Instance: hopitaltest-uac-4420-uac-01
InstanceOf: FRCoreOrganizationUACProfile
Usage: #example


* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
* extension[=].valueString = "UF Dialyse"
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description"
* extension[=].valueString = "UF Dialyse - Utilisation de l'hémodialuse"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/organization-period"
* extension[=].extension.url = "start"
* extension[=].extension.valueDateTime = "2023-01-01T00:00:00+01:00"


* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-care-rate-extension"
* extension[=].valueString = "E2"



* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "4220-01"
* type = $fr-core-v2-3307#UAC 
* type.text = "UAC"
* name = "UAC 01 Dialyse"

* partOf = Reference(Organization/hopitaltest-uf-4420-dialyse)