Profile: FRCoreAddressProfile
Parent: Address
Id: fr-core-address
Title: "FR Core Address Profile"
Description: "French profile of Address datatype | Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "meta.profile"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-address)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreAddressInseeCodeExtension named inseeCode 0..1

* country ^short = "Country (will be ISO 3166 3 letter code; code=FRA for France)"
* country ^comment = "ISO 3166 3 letter codes can be used in place of a full country name. FRA for France."