Extension: FRCorePatientIdentityReliabilityExtension
Id: fr-core-identity-reliability
Title: "FR Core Patient Identity Reliability Extension"
Description: "Extension composite précisant le degré de confiance de l'identité du patient au sens du Référentiel National d'Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d'obtention des traits d'identité ou de l'INS, pièce justificative contrôlée, dates associées et annotations complémentaires.\r\nComposite extension specifying the confidence level of a patient's identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS, validation evidence, related dates and additional annotations."

* ^purpose = "Permet de documenter le degré de confiance de l'identité d'un patient conformément au RNIV, ainsi que les éléments ayant permis de l'établir (canal de collecte, statut, justificatif de contrôle, annotations).\r\nDocuments the confidence level of a patient's identity per the RNIV, along with the elements used to establish it (collection channel, status, validation evidence, annotations)."

* ^context.type = #element
* ^context.expression = "Patient"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    methodCollection 0..1 and
    dateCollection 0..1 and
    identityStatus 0..1 and
    comment 0..* and
    validationDate 0..1 and
    validationMode 0..1

// Concertation : cardinalité à revoir ?

* extension[methodCollection] ^short = "Canal d'obtention des traits d'identité ou de l'INS (SM, CV, INSi, CB, RFID, AV) | Channel used to collect the identity traits or the INS"
// Référence : RNIV 1 - Principes communs, v2.0 (décembre 2024), chapitre 4.3
* extension[methodCollection] ^definition = "Précise le canal par lequel les traits d'identité ou l'INS ont été obtenus : saisie manuelle, lecture de la carte Vitale, interrogation directe du téléservice INSi, scan d'un code à barre/Datamatrix, lecture RFID ou Application carte Vitale. Ce champ ne porte pas le statut de confiance résultant (cf. sous-extension `identityStatus`) ni la pièce justificative contrôlée (cf. sous-extension `validationMode`)."
* extension[methodCollection].value[x] only Coding
* extension[methodCollection].valueCoding from FRCoreValueSetIdentityMethodCollection (extensible)

* extension[dateCollection] ^short = "INS collection date| date d'interrogation du téléservice INSi"
* extension[dateCollection] ^definition = "INS collection date| date d'interrogation du téléservice INSi"
* extension[dateCollection].value[x] only date

* extension[identityStatus] ^short = "Statut de confiance de l’identité au sens du RNIV (EXI SI 07) : PROV | RECUP | VALI | QUAL. Ces 4 statuts sont exclusifs les uns des autres."
* extension[identityStatus].value[x] only Coding
* extension[identityStatus].value[x] from FRCoreValueSetIdentityStatus (required)

* extension[comment] ^short = "Annotations complémentaires sur l’identité : attributs RNIV (homonyme, douteux, fictif) et codes de gestion (doublon, collision, désactivé…). Plusieurs annotations peuvent coexister."
* extension[comment].value[x] only Coding
* extension[comment].value[x] from FRCoreValueSetIdentityStatusComment (extensible)

* extension[validationDate] ^short = "Date de vérification de l'identité"
* extension[validationDate].value[x] only date

* extension[validationMode] ^short = "Spécifie le type de document qui a été contrôlé par l'agent d'admission pour justifier le statut de l'identité. Seuls certains types de pièces définis dans le RNIV permettent de valider une identité (CN | PA | CS | ... )"
* extension[validationMode].value[x] only Coding
* extension[validationMode].value[x] from fr-core-vs-mode-validation-identity (required)


