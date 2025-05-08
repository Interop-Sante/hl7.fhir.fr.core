Instance: FRCoreAppointmentExample
InstanceOf: fr-core-appointment
Usage: #example
* extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator"
* extension.valueReference = Reference(ExampleFRCorePatient001)
* identifier.system = "http://ans.org/sampleappointment-identifier"
* identifier.value = "123"
* status = #proposed
* serviceType = $ServiceType#1 "Adoption/Permanent Care Info/Support"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* priority = 5
* minutesDuration = 15
* slot = Reference(https://exampleserver.org/fhir/Slot/example)
* created = "2019-01-02"
* participant[0].actor = Reference(ExampleFRCorePatient001)
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(practitionerrole-example)
* participant[=].required = #required
* participant[=].status = #needs-action
* participant[+].actor = Reference(practitioner-example)
* participant[=].required = #required
* participant[=].status = #needs-action
* requestedPeriod.start = "2019-01-04T09:15:00Z"