Instance: hopitaltest-uf-4420-dialyse
InstanceOf: FRCoreOrganizationUFProfile
Usage: #example
//Instance: a443da9f-4cc0-42b1-9ff8-591199b65773

* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
* extension[=].valueString = "UF Dialyse"
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description"
* extension[=].valueString = "UF Dialyse - Utilisation de l'hémodialyse"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/organization-period"
* extension[=].extension.url = "start"
* extension[=].extension.valueDateTime = "2023-01-01T00:00:00+01:00"

//* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
//* extension[=].Annotation.time = "2023-12-12T10:18:14.034+10:00"
//* extension[=].Annotation.text = "Ouverture de l'UF de Dialyse"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur-extension"
* extension[=].valueCodeableConcept.coding[0] = $fr-core-cs-uf-indicateur#HEB "Hébergement"
* extension[=].valueCodeableConcept.coding[+] = $fr-core-cs-uf-indicateur#MED "Médicale"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-equipement"
* extension[=].valueCoding = $fr-core-cs-discipline-equipement#797 "Hémodialyse en centre pour adulte"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite"
//* extension[=].valueCodeableConcept.coding[0] = $fr-core-cs-activity-field#MCO "MCO"
* extension[=].valueCoding = $fr-core-cs-champ-activite#MCO "MCO"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe"
* extension[=].valueBoolean = false

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique"
* extension[=].valueInteger = 10

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-demandeuse-acte"
* extension[=].valueBoolean = false


* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executante-acte"
* extension[=].valueBoolean = true

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-uac-4420-uac-01)
* extension[=].valueReference.type = $fr-core-v2-3307#UAC
* extension[=].valueReference.display = "UAC 01 Dialyse"

* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
* extension[=].valueReference = Reference(Organization/hopitaltest-uac-4420-uac-02)
* extension[=].valueReference.type = $fr-core-v2-3307#UAC
* extension[=].valueReference.display = "UAC 02 Dialyse"

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "4220"
* type = $fr-core-v2-3307#UF "Unité fonctionnelle"
* type.text = "UF"
* name = "UF Dialyse"
* contact.telecom.system = #phone
* contact.telecom.value = "84220"
* contact.telecom.use = #work
