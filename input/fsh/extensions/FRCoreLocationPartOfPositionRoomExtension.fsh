Extension: FRCoreLocationPartOfPositionRoomExtension
Id: fr-core-location-position-room
Title: "FR Core Location Part Of Position Room Extension"
Description: "Position du lit dans la chambre.\r\nPosition of the bed in the bedroom"
* ^context.type = #fhirpath
* ^context.expression = "Location.partOf"
* value[x] only Coding
* value[x] from FRCoreValueSetLocationPositionRoom (extensible)