ValueSet: FRCoreValueSetOrganizationActivityField
Id: fr-core-organization-activity-field
Title: "FR Core ValueSet Organization activity field"
Description: "The activity field of the organization | Secteur d'activité de l'organisation."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc

* ^immutable = true
* include codes from system $TRE-R02-SecteurActivite