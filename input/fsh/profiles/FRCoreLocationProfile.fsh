Profile: FRCoreLocationProfile
Parent: Location
Id: fr-core-location
Title: "FR Core Location Profile"
Description: "French profile of Location | Profil français de la ressource Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FRCoreUsePeriodExtension named usePeriod 0..1

* identifier 1..
* identifier.use from IdentifierUse (required)
* identifier.type 1..
* identifier.type from FRCoreValueSetLocationIdentifierType (extensible)
* identifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier.type ^binding.extension[=].valueString = "IdentifierType"
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true

* identifier.system 1..
* identifier.value 1..
* identifier.assigner only Reference(FRCoreOrganizationProfile)
* status from LocationStatus (required)
* mode from LocationMode (required)
* type ..1
* type from FRCoreValueSetLocationType (extensible)
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile
* physicalType from FRCoreValueSetLocationPhysicalType (example)
* managingOrganization only Reference(FRCoreOrganizationProfile)

* partOf only Reference(FRCoreLocationProfile)
* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true

* partOf.extension ^slicing.discriminator.type = #value
* partOf.extension ^slicing.discriminator.path = "url"
* partOf.extension ^slicing.rules = #open

* partOf.extension contains FRCoreLocationPartOfPositionRoomExtension named positionRoom 0..1
* hoursOfOperation.daysOfWeek from DaysOfWeek (required)