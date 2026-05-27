Extension: FRCoreAddressInseeCodeExtension
Id: fr-core-address-insee-code
Title: "FR Core Address Insee Code Extension"
Description: """Extension d'ajout du code insee (5 chiffres) à l'adresse postale. Dans le cas d'une ville étrangère, le code département devient "99" et le code commune est renseigné avec le code pays.\r\nThis extension adds the insee code (5 digits) to the address. In the case of a foreign city, the department code becomes "99", and the municipality code is populated with the country code."""
* ^purpose = "This extension adds to the address data type:\r\n-  \"Code commune INSEE\" (5 digits)"
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only Coding
* value[x] from FRCoreValueSetINSEECode (extensible) //R13
