Instance: FRCoreSlotExample
InstanceOf: fr-core-slot
Usage: #example
Description: "Exemple de ressource Slot."
* identifier.use = #usual
* identifier.system = "http://slot-identifier-system.org"
* identifier.value = "451"
* serviceType = $ServiceType#7 "Friendly Visiting"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* schedule = Reference(FRCoreScheduleExample)
* status = #free
* start = "2019-01-04T09:15:00Z"
* end = "2019-01-04T09:30:00Z"