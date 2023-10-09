ValueSet: FRCoreValueSetLocationType
Id: fr-core-location-type
Title: "FR Core ValueSet Location type"
Description: "A role for a location | Jeu de valeurs du rôle joué par un lieu"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* $fr-location-type#PRSN_NGTV "Pression négative"
* $fr-location-type#PRSN_PSTV "Pression positive"
* $fr-location-type#CRCRL "Carcéral"
* $fr-location-type#CPTN "Capitonné"
* $fr-location-type#PNT_CLCT "Point de collecte"
* $fr-location-type#PNT_LVRSN "Point de livraison"
* $fr-location-type#SL_ATNT "Salle d’attente"
* $fr-location-type#SL_RVL "Salle réveil"
* $fr-location-type#SL_EXM "Salle examen"
* $fr-location-type#SL_RN "Salle de réunion"
* $fr-location-type#SL_TRV "Salle de travail"
* $fr-location-type#ACC "Point d'accueil"