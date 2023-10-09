Extension: FRCoreAddressInseeCodeExtension
Id: fr-core-address-insee-code
Title: "FR Core Address Insee Code Extension"
Description: "This extension adds the insee code (5 digits) to the address | Ajout du code insee (5 chiffres) à l'adresse postale"
* ^purpose = "This extension adds to the address data type:\r\n-  \"Code commune INSEE\" (5 digits)"
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only Coding
* value[x] from FRCoreValueSetINSEECode (required)