Extension: FRCorePatientContactIdentifierExtension
Id: fr-core-patient-contact-identifier
Title: "FR Core Patient Contact Identifier Extension"
Description: "Identifiant de contact dans la ressource Patient\n\rThis extension carries the contact identifier in the patient resource"
* ^context.type = #element
* ^context.expression = "Patient.contact"
* value[x] only Identifier