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

* city ^short = "Les communes existantes sont définies ici : https://public.opendatasoft.com/explore/dataset/correspondance-code-insee-code-postal/table. Une cohérence entre code commune (COG), code postal et nom de commune doit être établie."

* district from FRCoreValueSetCOGCommunePays (extensible)
* district ^short = "Code COG de la ville ou du pays. Dans les cas des adresses non françaises, la table d'association A25 (https://mos.esante.gouv.fr/NOS/ASS_A25-PaysProvenanceISO-PaysProvenanceCOG) permet de mapper un code sur le code ISO du pays."