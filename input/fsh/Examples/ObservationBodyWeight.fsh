Instance: FRCoreObservationBodyWeightExample
InstanceOf: fr-core-observation-body-weight
Usage: #example
Description: "Exemple de ressource Observation pour décrire le poids du patient"
* status = #final
* subject = Reference(FRCorePatientExample)
  * type = "Patient"
* performer = Reference(FRCorePractitionerExample)
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 96
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM