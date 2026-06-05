Profile: FRCoreAppointmentProfile
Parent: Appointment
Id: fr-core-appointment
Title: "FR Core Appointment Profile"
Description: "Profile of the Appointment resource for France. It allows to possibly reference an appointment canceled and a document associated with the appointment.\r\n
Profil de la ressource Appointment pour la France. Il permet de référencer éventuellement un RDV annulé et/ou un document lié au RDV."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-appointment)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $appointment-subject-r5 named subject 0..1

* extension[subject] ^short = "Sujet du rendez-vous (patient ou groupe) — backport R5 Appointment.subject"
* extension[subject].value[x] only Reference(FRCorePatientProfile or Group)

* specialty from FRCoreValueSetPractitionerSpecialty (required)
* specialty ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* specialty ^binding.extension.valueString = "specialty"

* slot only Reference(FRCoreSlotProfile)

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains appointmentOperator 0..*

* participant[appointmentOperator] ^short = "Opérateur ayant saisi ou modifié le rendez-vous"
* participant[appointmentOperator].type 1..*
* participant[appointmentOperator].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ENT
* participant[appointmentOperator].actor only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile or FRCorePatientProfile or RelatedPerson)

* participant.type from FRCoreValueSetAppointmentParticipantType (extensible)
* participant.actor only Reference(Device or PractitionerRole or FRCoreRelatedPersonProfile or FRCoreHealthcareServiceProfile or FRCorePractitionerProfile or FRCorePatientProfile or FRCoreLocationProfile)