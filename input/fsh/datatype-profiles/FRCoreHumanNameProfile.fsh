Profile: FRCoreHumanNameProfile
Parent: HumanName
Id: fr-core-human-name
Title: "FR Core Human Name Profile"
Description: "Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix\r\n.French profile of datatype HumanName with constraints on prefix and suffix"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains $humanname-assembly-order named assemblyOrder 0..1

* prefix ..1
* prefix from $JDV-J245-Civilite-CISIS (extensible)
* prefix ^binding.description = "Civilités des personnes physiques"

