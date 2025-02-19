// TODO - extension utilisée nulle part, à étudier 

Extension: FRCorePractitionerProfessionExtension
Id: fr-core-practitioner-profession
Title: "FR Core Practitioner Profession Extension"
Description: """This extension adds the element "profession" to the FHIR Practitioner resource."""
* ^context.type = #element
* ^context.expression = "Practitioner"

* value[x] only Coding
* value[x] from $fr-core-practitioner-profession (required)