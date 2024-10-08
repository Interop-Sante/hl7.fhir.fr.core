Instance: FRCoreObservationBodyTemperatureExample
InstanceOf: fr-core-observation-body-temperature
Usage: #example
* status = #final
* subject = Reference(ExampleFRCorePatient001) "Pierre Durand"
  * type = "Patient"
* performer = Reference(ExampleFRCorePatient001) "Pierre Durand"

* effectiveDateTime = "2022-11-06"
* valueQuantity = 36.5 'Cel' "C"
