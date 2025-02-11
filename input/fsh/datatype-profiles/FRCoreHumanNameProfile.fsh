Profile: FRCoreHumanNameProfile
Parent: HumanName
Id: fr-core-human-name
Title: "FR Core Human Name Profile"
Description: "Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix\r\n.French profile of datatype HumanName with constraints on prefix and suffix"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $humanname-assembly-order named assemblyOrder 0..1

* use from NameUse (required)
* prefix ..1
* prefix from $JDV-J78-Civilite-RASS (extensible)
* prefix ^binding.description = "Civilités des personnes physiques du RASS"
* suffix from $JDV-J79-CiviliteExercice-RASS (extensible)
* suffix ^short = "jeu de valeurs pour spécifier le titre de la personne"
* suffix ^binding.description = "Civilités d'exercice d'un professionnel du RASS"