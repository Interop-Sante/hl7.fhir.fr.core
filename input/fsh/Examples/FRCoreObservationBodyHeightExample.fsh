Instance: FRCoreObservationBodyHeightExample
InstanceOf: fr-core-observation-body-height
Usage: #example
Description: "Exemple de ressource Observation pour décrire la taille du patient"
* status = #final
* subject = Reference(FRCorePatientINSExample)
* performer = Reference(FRCorePractitionerExample)
* effectiveDateTime = "1999-07-02"
* valueQuantity.value = 185 
* valueQuantity.code = #cm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "cm"

