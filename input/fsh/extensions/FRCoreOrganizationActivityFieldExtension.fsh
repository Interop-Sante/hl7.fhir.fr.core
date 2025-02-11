Extension: FRCoreOrganizationActivityFieldExtension
Id: fr-core-organization-activity-field
Title: "FR Core Organization Activity Field Extension"
Description: "Champ d'activité d'une UF.\r\nActivity field of an organization"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Coding
* value[x] from FRCoreValueSetOrganizationActivityField (extensible)