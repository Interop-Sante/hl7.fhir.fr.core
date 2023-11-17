ValueSet: FRCoreValueSetLocationPhysicalType
Id: fr-core-location-physical-type
Title: "FR Core ValueSet Location physical type"
Description: "French location physical type | Types de lieux physiques pour la France"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* $fr-location-physical-type#FTL "Emplacement fauteuil"
* $fr-location-physical-type#BTMNT "Bâtiment"
* $fr-location-physical-type#L "Lieu non spécifié"
* $fr-location-physical-type#ETG "Etage"
* $fr-location-physical-type#AL "Aile"
* $fr-location-physical-type#CLR "Couloir"
* $fr-location-physical-type#R "Chambre"
* $fr-location-physical-type#BX "Box"
* $fr-location-physical-type#PT "Point"
* $fr-location-physical-type#B "Emplacement lit"
* $fr-location-physical-type#BLC "Bloc"
* $fr-location-physical-type#BR "Bureau"