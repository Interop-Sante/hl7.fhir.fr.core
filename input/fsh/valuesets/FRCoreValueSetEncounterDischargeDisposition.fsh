ValueSet: FRCoreValueSetEncounterDischargeDisposition
Id: fr-core-encounter-discharge-disposition
Title: "FR Core ValueSet Encounter discharge disposition"
Description: "This value set defines a set of codes that can be used to where the patient left the hospital | Circonstances de sortie de l'hôpital."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* ^immutable = true
* $fr-circonstances-sortie#2 "Mesure disciplinaire"
* $fr-circonstances-sortie#3 "Décision médicale"
* $fr-circonstances-sortie#4 "Contre avis médical"
* $fr-circonstances-sortie#5 "en attente d'examen"
* $fr-circonstances-sortie#6 "Convenance personnelle"
* $fr-circonstances-sortie#R "Essai (contexte psychiatrique)"
* $fr-circonstances-sortie#E "Evasion"
* $fr-circonstances-sortie#F "Fugue"