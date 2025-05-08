Instance: FRCoreObservationBodyHeightExample
InstanceOf: fr-core-observation-body-height
Usage: #example
* status = #final
* subject = Reference(FRCorePatientExample)
* performer  = Reference(FRCorePractitionerExample)
* effectiveDateTime = "1999-07-02"
* valueQuantity.value = 185 
* valueQuantity.code = #cm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "cm"

