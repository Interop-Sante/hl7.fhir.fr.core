Profile: FRCoreContactPointProfile
Parent: ContactPoint
Id: fr-core-contact-point
Title: "FR Core Contact Point Profile"
Description: "Profil du type de données ContactPoint pour la France, ce profil ajoute le type d'e-mail tel que la bal mss.\r\nFrench profile of ContactPoint datatype"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreContactPointEmailTypeExtension named emailType 0..1

* system 1..
* value 1..