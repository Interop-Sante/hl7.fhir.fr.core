Instance: FRCoreObservationHeadCircumExample
InstanceOf: fr-core-observation-head-circum
Usage: #example
* status = #final
* code = http://loinc.org#9843-4
* subject = Reference(FRCorePatientExample)
  * type = "Patient" 
* performer = Reference(FRCorePatientExample)

* effectiveDateTime = "2022-11-06"
* valueQuantity = 61 'cm' "cm"
