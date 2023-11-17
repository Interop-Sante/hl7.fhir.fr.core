ValueSet: FRCoreValueSetLocationIdentifierType
Id: fr-core-location-identifier-type
Title: "FR Core ValueSet Location identifier type"
Description: "A coded type for a location | Jeu de valeurs des types d'identifiant de lieu."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* $fr-location-identifier-type#INTRN "Identifiant interne"
* $fr-location-identifier-type#EXTRN "Identifiant externe"
* $fr-location-identifier-type#GLBL "Identifiant global"
* $fr-location-identifier-type#IDNST "Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS"