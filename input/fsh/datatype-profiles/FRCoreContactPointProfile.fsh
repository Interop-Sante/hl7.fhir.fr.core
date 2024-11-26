Profile: FRCoreContactPointProfile
Parent: ContactPoint
Id: fr-core-contact-point
Title: "FR Core Contact Point Profile"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreContactPointEmailTypeExtension named emailType 0..1
* extension[emailType] ^short = "Type d'email dans le cas où le point de contact est de type email."

* system 1..
* value 1..
