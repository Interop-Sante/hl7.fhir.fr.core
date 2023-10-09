Extension: FRCoreLocationPartOfPositionRoomExtension
Id: fr-core-location-position-room
Title: "FR Core Location Part Of Position Room Extension"
Description: "Position of the bed in the bedroom | Position du lit dans la chambre"
* ^context.type = #fhirpath
* ^context.expression = "Location.partOf"
* value[x] only Coding
* value[x] from FRCoreValueSetLocationPositionRoom (extensible)