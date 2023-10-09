Extension: FRCoreContactPointEmailTypeExtension
Id: fr-core-contact-point-email-type
Title: "FR Core Contact Point Email Type Extension"
Description: "Extension on the ContactPoint datatype. This extension allows to specify the type of mail used to contact the person (MSSsanté|Apicrypt|OSM|Autre)."
* ^context.type = #element
* ^context.expression = "ContactPoint"
* . ..1
* . ^short = "Type of email | type de messagerie électronique"
* value[x] only Coding
* value[x] from FRCoreValueSetEmailType (extensible)