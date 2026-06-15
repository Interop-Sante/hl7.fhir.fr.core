Profile: FRBodyStructure
Parent: BodyStructure
Id: fr-body-structure
Title: "BodyStructure - FR Body Structure"
Description: "FRBodyStructure permet de préciser les modificateurs topographiques associés à une localisation anatomique."

* locationQualifier ^short = "Modificateurs topographiques"
* locationQualifier from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)
* location ^short = "Localisation anatomique ou voie d'abord"
* location from FRValueSetLocationBodyStructureDocument (extensible)
