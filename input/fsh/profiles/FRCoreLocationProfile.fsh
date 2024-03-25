Profile: FRCoreLocationProfile
Parent: Location
Id: fr-core-location
Title: "FR Core Location Profile"
Description: "French profile of Location.\r\n
Profil français de la ressource Location"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-location)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FRCoreUsePeriodExtension named usePeriod 0..1

* identifier ^short = "Identifiant fonctionnel du lieu. Il est recommandé de remplir ce champs pour faciliter l'identification des ressources."

* identifier.type 1..
* identifier.type from FRCoreValueSetLocationIdentifierType (extensible)

* identifier.system 1..
* identifier.value 1..
* identifier.assigner only Reference(FRCoreOrganizationProfile)

* type ..1
* type from FRCoreValueSetLocationType (extensible)

* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile

* physicalType from FRCoreValueSetLocationPhysicalType (example)

* managingOrganization only Reference(FRCoreOrganizationProfile)

* partOf only Reference(FRCoreLocationProfile)

* partOf.extension ^slicing.discriminator.type = #value
* partOf.extension ^slicing.discriminator.path = "url"
* partOf.extension ^slicing.rules = #open

* partOf.extension contains FRCoreLocationPartOfPositionRoomExtension named positionRoom 0..1