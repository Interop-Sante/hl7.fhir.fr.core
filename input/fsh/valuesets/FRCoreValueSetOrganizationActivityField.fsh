ValueSet: FRCoreValueSetOrganizationActivityField
Id: fr-core-vs-organization-activity-field
Title: "FR Core ValueSet Organization activity field"
Description: "Secteur d'activité de l'organisation.\r\nThe activity field of the organization"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc

* ^immutable = true
* include codes from system $TRE-R02-SecteurActivite

// SVS profile
* ^experimental = false