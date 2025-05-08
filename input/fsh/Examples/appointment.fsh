Instance: FRCoreAppointmentExample
InstanceOf: fr-core-appointment
Usage: #example
* extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator"
* extension.valueReference = Reference(FRCorePatientExample)
* identifier.system = "http://system-identifier.org/sampleappointment-identifier"
* identifier.value = "123"
* status = #proposed
* serviceType = $ServiceType#1 "Adoption/Permanent Care Info/Support"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* priority = 5
* minutesDuration = 15
* slot = Reference(FRCoreSlotExample)
* created = "2019-01-02"
* participant[0].actor = Reference(FRCorePatientExample)
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(FRCorePractitionerRoleExample)
* participant[=].required = #required
* participant[=].status = #needs-action
* participant[+].actor = Reference(FRCorePractitionerExample)
* participant[=].required = #required
* participant[=].status = #needs-action
* requestedPeriod.start = "2019-01-04T09:15:00Z"