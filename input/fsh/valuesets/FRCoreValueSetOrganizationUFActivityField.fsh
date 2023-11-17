ValueSet: FRCoreValueSetOrganizationUFActivityField
Id: fr-core-organization-uf-activity-field
Title: "FR Core ValueSet Organization UF activity field"
Description: "Organization UF activity field | Champ d'activité des structures UF"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^status = #draft
* $fr-core-v2-3311#MCO "MCO"
* $fr-core-v2-3311#SSR "SSR"
* $fr-core-v2-3311#HD "HAD"
* $fr-core-v2-3311#EHPD "EHPAD"
* $fr-core-v2-3311#LG_SJR "Long séjour"
* $fr-core-v2-3311#MSN_RTRT "Maison de retraite"
* $fr-core-v2-3311#PSY "Psy"
* $fr-core-v2-3311#URG "Urgence"