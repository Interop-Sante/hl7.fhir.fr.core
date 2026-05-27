Instance: FRCoreObservationOxygenSaturationExample
InstanceOf: fr-core-observation-saturation-oxygen
Usage: #example
Description: "Exemple de ressource Observation pour décrire la saturation en oxygène d'un patient sous oxygénothérapie"
* partOf = Reference(FRCoreMedicationAdministrationInhaledOxygenExample)
* status = #final
* subject = Reference(FRCorePatientINSExample)
  * type = "Patient"
* performer = Reference(FRCorePractitionerExample)
* effectiveDateTime = "2022-11-06T09:30:00+01:00"
* valueQuantity = 97 '%' "%"
* bodySite = $SCT#7569003 "doigt d'une main excepté le pouce"
