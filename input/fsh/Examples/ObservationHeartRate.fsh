Instance: FRCoreObservationHeartRateExample
InstanceOf: fr-core-observation-heartrate
Usage: #example
* status = #final
* subject = Reference(ExampleFRCorePatient001) "Pierre Durand"
  * type = "Patient"
* performer = Reference(ExampleFRCorePatient001) "Pierre Durand"

* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"