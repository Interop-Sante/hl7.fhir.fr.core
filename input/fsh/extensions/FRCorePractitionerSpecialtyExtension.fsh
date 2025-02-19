// TODO - extension utilisée nulle part, à étudier 

Extension: FRCorePractitionerSpecialtyExtension
Id: fr-core-practitioner-specialty
Title: "FR Core Practitioner Specialty Extension"
Description: """This extension adds the element "specialty" to the FHIR Practitioner resource."""
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* value[x] from FRCoreValueSetPractitionerSpecialty (required)