Extension: FRCorePractitionerProfessionExtension
Id: fr-core-practitioner-profession
Title: "FR Core Practitioner Profession Extension"
Description: """This extension adds the element "profession" to the FHIR Practitioner resource.
ASIP valueSet http://esante.gouv.fr/sites/NOS/TABS/TRE_G15-ProfessionSante.tabs"""
* ^context.type = #element
* ^context.expression = "Practitioner"

* value[x] only Coding
* value[x] from $fr-core-practioner-profession (required)