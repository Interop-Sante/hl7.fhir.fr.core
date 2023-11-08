Extension: FRCoreObservationLevelOfExertionExtension
Id: fr-core-observation-level-of-exertion
Title: "FR Core Observation Level Of Exertion Extension"
Description: "French extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure | Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d'exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l'effort, après l'effort)"
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* value[x].coding from $fr-core-observation-level-of-exertion (preferred)  // TODO : ce VS n'existe pas, renvoie sur cette extension