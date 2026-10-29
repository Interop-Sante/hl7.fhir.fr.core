Profile: FRCoreBodyStructureProfile
Parent: bodyStructure-eu-core
Id: fr-core-body-structure
Title: "FR Core BodyStructure Profile"
Description: "FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-body-structure)

* extension[includedStructure].extension[structure] ^short = "Localisation anatomique ou voie d'abord"
* extension[includedStructure].extension[structure].value[x] from FRCoreValueSetBodyStructureLocation (extensible)

* extension[includedStructure].extension[qualifier] ^short = "Modificateurs topographiques"
* extension[includedStructure].extension[qualifier].value[x] from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)


* extension[includedStructure].extension[laterality].value[x] from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lateralite-cisis (required)

// Correction d'une incohérence de l'extension xver R5→R4 : la slice _datatype est 1..1 alors que le parent de slice est 0..*
* extension[includedStructure].extension[bodyLandmarkOrientation].extension[distanceFromLandmark].extension[device].extension 1..*
