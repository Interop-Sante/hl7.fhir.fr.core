Extension: FRCorePatientContactIdentifierExtension
Id: fr-core-patient-contact-identifier
Title: "FR Core Patient Contact Identifier Extension"
Description: "This extension carries the contact identifier in the patient resource | Ajout d'un identifiant de contact dans la ressource Patient"
* ^context.type = #fhirpath
* ^context.expression = "Patient.contact"
* . ^short = "Contact identifier in the patient resource | Identifiant de contact dans la ressource Patient"
* value[x] only Identifier