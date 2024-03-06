Instance: FRCoreScheduleExample
InstanceOf: fr-core-schedule
Usage: #example
* extension[0].url = "http://interopsante.org/fhir/StructureDefinition/FrScheduleAvailabiltyTime"
* extension[=].extension[0].url = "identifier"
* extension[=].extension[=].valueIdentifier.value = "dispo09112020"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCoding = http://terminology.interopsante.org/CodeSystem/v2-3315#free "Disponibilité"
* extension[=].extension[+].url = "start"
* extension[=].extension[=].valueDateTime = "2020-11-09T08:00:00+01:00"
* extension[=].extension[+].url = "end"
* extension[=].extension[=].valueDateTime = "2020-11-09T20:00:00+01:00"
* extension[+].url = "http://interopsante.org/fhir/StructureDefinition/FrServiceTypeDuration"
* extension[=].extension[0].url = "serviceType"
* extension[=].extension[=].valueCodeableConcept = $ServiceType#1 "suivi"
* extension[=].extension[+].url = "duration"
* extension[=].extension[=].valueDuration = 15 'min' "minute"
* identifier.use = #usual
* identifier.system = "http://example.org/scheduleid"
* identifier.value = "45"
* active = true
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* actor[0] = Reference(https://exampleserver.org/fhir/PractitionerRole/1) "Dr Langdon, cabinet Paris"
* actor[+] = Reference(https://exampleserver.org/fhir/Practitioner/1) "Dr Langdon"
* planningHorizon.start = "2019-01-01T00:00:00Z"
* planningHorizon.end = "2020-01-01T00:00:00Z"