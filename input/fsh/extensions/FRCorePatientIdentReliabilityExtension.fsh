Extension: FRCorePatientIdentityReliabilityExtension //TODO : meilleur nom?
Id: fr-core-identity-reliability
Title: "FR Core Patient Ident Reliability Extension"
Description: "Reliabilility of the patient's identity | Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) avec la méthode de collection"

* ^purpose = "Permet de préciser le degré de fiabilité de l'identité du patient\r\nReliabilility of the patient's identity"

* ^context.type = #element
* ^context.expression = "Patient"

* . ^short = "Reliabilility of the identity | Fiabilité de l'identité"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    methodCollection 0..1 and
    dateCollection 0..1 and
    identityStatus 0..1 and
    validationDate 0..1 and
    validationMode 0..1

// Concertation : cardinalité à revoir ?

* extension[methodCollection] ^short = "The way the INS identity is collected | Mode d'obtention de l'INS (SM, CV, INSI, ...)"
* extension[methodCollection].value[x] only Coding
* extension[methodCollection].valueCoding from FRCoreValueSetIdentityMethodCollection (extensible)

* extension[dateCollection] ^short = "INS collection date| date d'interrogation du téléservice INSi"
* extension[dateCollection] ^definition = "INS collection date| date d'interrogation du téléservice INSi"
* extension[dateCollection].value[x] only date

* extension[identityStatus] ^short = "Il s'agit du statut de l'identité (VALI | PROV | FICT | DOUT | ...). Dans certains cas il peut également être nécessaire de véhiculer, la notion d’attribut d’identité. Les combinaisons autorisées entre statuts et attributs sont décrites dans le Référentiel National d’Identito-Vigilance."
* extension[identityStatus].value[x] only Coding
* extension[identityStatus].value[x] from FRCoreValueSetIdentityReliabilityStatus (extensible)

* extension[validationDate] ^short = "Date de vérification de l'identité"
* extension[validationDate].value[x] only date

* extension[validationMode] ^short = "Spécifie le type de document qui a été contrôlé par l'agent d'admission pour justifier le statut de l'identité. Seuls certains types de pièces définis dans le RNIV permettent de valider une identité (CN | PA | CS | ... )"
* extension[validationMode].value[x] only Coding
* extension[validationMode].value[x] from fr-core-vs-mode-validation-identity (required)


