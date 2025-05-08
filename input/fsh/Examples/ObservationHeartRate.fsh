Instance: FRCoreObservationHeartRateExample
InstanceOf: fr-core-observation-heartrate
Usage: #example
* status = #final
* subject = Reference(FRCorePatientExample)
  * type = "Patient"
* performer = Reference(FRCorePatientExample)

* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"