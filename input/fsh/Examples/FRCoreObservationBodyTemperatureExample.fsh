Instance: FRCoreObservationBodyTemperatureExample
InstanceOf: fr-core-observation-body-temperature
Usage: #example
Description: "Exemple de ressource Observation pour décrire la température du patient"
* status = #final
* subject = Reference(FRCorePatientExample)
* performer = Reference(FRCorePractitionerExample)

* effectiveDateTime = "2022-11-06"
* valueQuantity = 36.5 'Cel' "C"
