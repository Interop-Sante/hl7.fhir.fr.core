Extension: FRCoreAppointmentOperatorExtension
Id: fr-core-appointment-operator
Title: "FR Core Appointment Operator Extension"
Description: "Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). \r\nThis extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment"
* ^context.type = #element
* ^context.expression = "Appointment"
* value[x] only Reference
* valueReference only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile or FRCorePatientProfile or RelatedPerson)
