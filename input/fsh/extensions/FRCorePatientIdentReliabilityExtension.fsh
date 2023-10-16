Extension: FRCorePatientIdentReliabilityExtension
Id: fr-core-ident-reliability
Title: "FR Core Patient Ident Reliability Extension"
Description: "Reliabilility of the patient's identity | Précision sur le degré de fiabilité de l'identité du patient."
* ^purpose = "Permet de préciser le degré de fiabilité de l'identité du patient\r\nReliabilility of the patient's identity"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Reliabilility of the identity | Degré de fiabilité de l'identité"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    identityReliability 0..1 and
    validationDate 0..1 and
    validationMode 0..1

* extension[identityReliability] ^short = "Fiabilité de l'identité"
* extension[identityReliability].value[x] only Coding
* extension[identityReliability].value[x] from FRCoreValueSetIdentityReliability (extensible)

* extension[validationDate] ^short = "Date de vérification de l'identité"
* extension[validationDate].value[x] only date

* extension[validationMode] ^short = "Code de validation de l'identité (avec quelle pièce officielle?)"
* extension[validationMode].value[x] only Coding
* extension[validationMode].value[x] from $fr-core-mode-validation-identite (required)