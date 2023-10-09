Profile: FRCoreAddressProfile
Parent: Address
Id: fr-core-address
Title: "FR Core Address Profile"
Description: "French profile of Address datatype | Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreAddressInseeCodeExtension named inseeCode 0..1

* country ^short = "Country (will be ISO 3166 3 letter code; code=FRA for France)"
* country ^comment = "ISO 3166 3 letter codes can be used in place of a full country name. FRA for France."