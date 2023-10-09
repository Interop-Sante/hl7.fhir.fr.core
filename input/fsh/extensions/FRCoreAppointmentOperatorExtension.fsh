Extension: FRCoreAppointmentOperatorExtension
Id: fr-core-appointment-operator
Title: "FR Core Appointment Operator Extension"
Description: "This extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment | Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV)"
* ^context.type = #element
* ^context.expression = "Appointment"
* valueReference only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile or FRCorePatientProfile or RelatedPerson)