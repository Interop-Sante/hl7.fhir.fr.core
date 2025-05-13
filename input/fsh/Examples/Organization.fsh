Instance: FRCoreOrganizationExample
InstanceOf: FRCoreOrganizationProfile
Usage: #example
Description: "Exemple de ressource Organization pour décrire un hôpital"
* meta.versionId = "1"
* meta.lastUpdated = "2025-04-28T19:35:45.507+02:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
* language = #fr
* identifier[0].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#IDNST
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[=].value = "2264403106"
* identifier[+].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#SIREN
* identifier[=].system = "https://sirene.fr"
* identifier[=].value = "264403106"
* active = true
* type[0] = $fr-core-cs-v2-3307#LEGAL-ENTITY
* type[+] = $TRE-R02-SecteurActivite#SA43
* name = "HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G"