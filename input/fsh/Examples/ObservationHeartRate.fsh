Instance: FRCoreObservationHeartRateExample
InstanceOf: fr-core-observation-heartrate
Usage: #example
* status = #final
* subject = Reference(ExampleFRCorePatient001)
  * type = "Patient"
* performer = Reference(ExampleFRCorePatient001)

* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"