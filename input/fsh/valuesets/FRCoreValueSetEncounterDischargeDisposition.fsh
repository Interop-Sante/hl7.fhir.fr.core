ValueSet: FRCoreValueSetEncounterDischargeDisposition
Id: fr-core-vs-encounter-discharge-disposition
Title: "FR Core ValueSet Encounter discharge disposition"
Description: "This value set defines a set of codes that can be used to where the patient left the hospital | Circonstances de sortie de l'hôpital."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* ^immutable = true

* include codes from system $fr-circonstances-sortie
* include codes from system http://terminology.hl7.org/CodeSystem/discharge-disposition

// SVS profile
* ^experimental = false