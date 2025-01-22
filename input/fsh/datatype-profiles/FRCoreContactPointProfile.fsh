Profile: FRCoreContactPointProfile
Parent: ContactPoint
Id: fr-core-contact-point
Title: "FR Core Contact Point Profile"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreContactPointEmailTypeExtension named emailType 0..1
* extension[emailType] ^short = "Champs permettant de préciser le type d'email (MSSANTE | APICRYPT | OSM | AutreMessagerie) dont il est question dans le cas où le point de contact est un email."

* system 1..
* value 1..
