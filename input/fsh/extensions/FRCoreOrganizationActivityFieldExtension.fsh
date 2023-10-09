Extension: FRCoreOrganizationActivityFieldExtension
Id: fr-core-organization-activity-field
Title: "FR Core Organization Activity Field Extension"
Description: "Activity field of an organization | Champ d'activité d'une UF"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Coding
* value[x] from FRCoreValueSetOrganizationActivityField (extensible)