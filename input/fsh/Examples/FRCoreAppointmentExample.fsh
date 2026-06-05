Instance: FRCoreAppointmentExample
InstanceOf: fr-core-appointment
Usage: #example
Description: "Exemple de ressource Appointment pour décrire un état de rendez-vous médical"
* identifier.system = "http://appointment-identifier-system.org"
* identifier.value = "123"
* status = #proposed
* serviceType = $ServiceType#1 "Adoption/Permanent Care Info/Support"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* priority = 5
* minutesDuration = 15
* slot = Reference(FRCoreSlotExample)
* created = "2019-01-02"
* participant[0].actor = Reference(FRCorePatientINSExample)
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(FRCorePractitionerRoleExample)
* participant[=].required = #required
* participant[=].status = #needs-action
* participant[+].actor = Reference(FRCorePractitionerExample)
* participant[=].required = #required
* participant[=].status = #needs-action
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ENT
* participant[=].actor = Reference(FRCorePractitionerExample)
* participant[=].status = #accepted
* requestedPeriod.start = "2019-01-04T09:15:00Z"