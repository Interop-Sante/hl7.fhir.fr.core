ValueSet: FRCoreValueSetAppointmentParticipantType
Id: fr-core-vs-appointment-participant-type
Title: "FR Core ValueSet Appointment Participant Type"
Description: "Codes décrivant le rôle d'un participant dans un rendez-vous médical. Étend le ValueSet HL7 encounter-participant-type avec le code ENT (data enterer) pour représenter l'opérateur ayant saisi ou modifié le rendez-vous."
* insert SetValueset

* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-participant-type
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ENT "data entry person"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SBJ "subject"

* ^experimental = false
