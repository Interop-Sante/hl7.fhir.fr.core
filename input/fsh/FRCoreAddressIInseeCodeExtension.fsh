Extension: FRCoreAddressInseeCodeExtension
Id: fr-core-address-insee-code
Title: "FR Core Address Insee Code Extension"
Description: "Extension d'ajout du code insee (5 chiffres) à l'adresse postale.\r\nThis extension adds the insee code (5 digits) to the address"
* ^purpose = "This extension adds to the address data type:\r\n-  \"Code commune INSEE\" (5 digits)"
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only Coding
* value[x] from FRCoreValueSetINSEECode (required) //R13