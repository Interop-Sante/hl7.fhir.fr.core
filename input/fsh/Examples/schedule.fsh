Instance: FRCoreScheduleExample
InstanceOf: fr-core-schedule
Usage: #example
Description: "Exemple de ressource Schedule pour décrire un agenda."
* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time"
* extension[=].extension[0].url = "identifier"
* extension[=].extension[=].valueIdentifier.value = "dispo09112020"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type#free "Disponibilité"
* extension[=].extension[+].url = "start"
* extension[=].extension[=].valueDateTime = "2020-11-09T08:00:00+01:00"
* extension[=].extension[+].url = "end"
* extension[=].extension[=].valueDateTime = "2020-11-09T20:00:00+01:00"
* extension[+].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
* extension[=].extension[0].url = "serviceType"
* extension[=].extension[=].valueCodeableConcept = $ServiceType#22 "Hypnotherapy"
* extension[=].extension[+].url = "duration"
* extension[=].extension[=].valueDuration = 15 'min' "minute"
* identifier.use = #usual
* identifier.system = "http://schedule-identifier-system.org"
* identifier.value = "45"
* active = true
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* actor[0] = Reference(FRCorePractitionerRoleExample)
* actor[+] = Reference(FRCorePractitionerExample)
* planningHorizon.start = "2019-01-01T00:00:00Z"
* planningHorizon.end = "2020-01-01T00:00:00Z"