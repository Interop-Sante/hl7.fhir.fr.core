Instance: FRCoreObservationBodyWeightExample
InstanceOf: fr-core-observation-body-weight
Usage: #example
* status = #final
* subject = Reference(FRCorePatientExample)
  * type = "Patient"
* performer  = Reference(FRCorePractitionerExample)
* effectiveDateTime = "2022-11-06"
* method.coding = https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED#K50BI02
* valueQuantity.value = 96
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM