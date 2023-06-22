Profile: FRCoreOservationRespRateProfile
Parent: $resprate
Id: fr-core-observation-resp-rate
Title: "FR Core Oservation Resp Rate Profile"
Description: """Profile of the ObservationResprate profil (described in the HL7 VitalSigns profil) for France | Profilage du profil ObservationResprate (décrit dans le profil HL7 VitaSigns) pour l'usage en France
This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions | Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France."""
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-10-18"
* ^publisher = "InteropSanté"
* ^contact.name = "InteropSanté"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^contact.telecom.use = #work
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    FRCoreObservationBodyPositionExtExtension named bodyPosition 0..1 and
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS
* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)
* interpretation from $fr-core-obervation-interpretation (extensible)
* interpretation ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* interpretation ^binding.extension.valueString = "ObservationInterpretation"
* method from $ValueSet-respiratoryRateMeasMethodVS.html (example)
* method ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* method ^binding.extension.valueString = "ObservationMethod"