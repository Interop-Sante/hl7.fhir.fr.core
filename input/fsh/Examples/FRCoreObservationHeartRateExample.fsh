Instance: FRCoreObservationHeartRateExample
InstanceOf: fr-core-observation-heartrate
Usage: #example
Description: "Exemple de ressource Observation pour décrire la fréquence cardiaque d'un patient"
* status = #final
* subject = Reference(FRCorePatientINSExample)
  * type = "Patient"
* performer = Reference(FRCorePatientINSExample)

* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"