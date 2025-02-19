Extension: FRCoreObservationHeightBodyPositionExtension
Id: fr-core-observation-height-body-position
Title: "FR Core Observation Height Body Position Extension"
Description: "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height."
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* value[x] from $fr-core-height-body-position (example)