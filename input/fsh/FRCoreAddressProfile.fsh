Profile: FRCoreAddressProfile
Parent: Address
Id: fr-core-address
Title: "FR Core Address Profile"
Description: "Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée.\r\nFrench profile of Address datatype"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

// Ce champs doit être obligatoire dans le cadre du patient INS. L'extension a été rajoutée à la place de district pour sécurité (préciser le system)
* extension contains FRCoreAddressInseeCodeExtension named inseeCode 0..1

* extension[inseeCode] ^short = "Code COG de la ville"

* country ^short = "Country (will be ISO 3166 3 letter code; code=FRA for France)"

* city ^short = "Les communes existantes sont définies ici : https://public.opendatasoft.com/explore/dataset/correspondance-code-insee-code-postal/table."