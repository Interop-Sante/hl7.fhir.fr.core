Extension: FRCorePractitionerSpecialtyExtension
Id: fr-core-practitioner-specialty
Title: "FR Core Practitioner Specialty Extension"
Description: """This extension adds the element "specialty" to the FHIR Practitioner resource.
http://esante.gouv.fr/sites/NOS/TABS/TRE_R38-SpecialiteOrdinale.tabs"""
* ^context.type = #element
* ^context.expression = "Practtioner"
* value[x] only Coding
* value[x] from FRCoreValueSetPractitionerSpecialty (required)