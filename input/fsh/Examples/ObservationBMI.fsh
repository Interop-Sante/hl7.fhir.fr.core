Instance: FRCoreObservationBMIExample
InstanceOf: fr-core-observation-bmi
Usage: #example
* status = #final
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 28
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "Kg/m2"
* valueQuantity.system = $UCUM
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

