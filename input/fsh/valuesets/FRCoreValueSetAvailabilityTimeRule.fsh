ValueSet: FRCoreValueSetAvailabilityTimeRule
Id: fr-core-vs-availability-time-rule
Title: "FR Core ValueSet Availability Schedule"
Description: "Spécifications des périodes récurrentes.\r\nSpecification of the recurrent periods "
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Availability Time Rule"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* $rfc2445#SECONDLY "Par seconde"
* $rfc2445#MINUTELY "Par minute"
* $rfc2445#HOURLY "Par heure"
* $rfc2445#DAILY "Par jour"
* $rfc2445#WEEKLY "Par semaine"
* $rfc2445#MONTHLY "Par mois"
* $rfc2445#YEARLY "Par an"

// SVS profile
* ^experimental = false