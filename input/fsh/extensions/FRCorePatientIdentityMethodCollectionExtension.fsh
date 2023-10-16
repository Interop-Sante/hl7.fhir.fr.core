Extension: FRCorePatientIdentityMethodCollectionExtension
Id: fr-core-patient-identity-method-collection
Title: "FR Core Patient Identity Method Collection Extension"
Description: "This french extension specifies the way the identity is collected | Cette extension française spécifie la façon dont l'identité est obtenue"
* ^context.type = #element
* ^context.expression = "Patient"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    methodCollection 0..1 and
    collectionDate 0..1

* . ^short = "méthode de collection de l'INS"


* extension[methodCollection] ^short = "The way the INS identity is collected | Mode d'obtention de l'INS"
* extension[methodCollection].value[x] only Coding
* extension[methodCollection].valueCoding from FRCoreValueSetIdentityMethodCollection (extensible)

* extension[collectionDate] ^short = "INS collection date| date d'interrogation du téléservice INSi"
* extension[collectionDate] ^definition = "INS collection date| date d'interrogation du téléservice INSi"
* extension[collectionDate].value[x] only date