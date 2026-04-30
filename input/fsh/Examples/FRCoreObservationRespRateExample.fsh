Instance: FRCoreObservationRespRateExample
InstanceOf: fr-core-observation-resp-rate
Usage: #example
Description: "Exemple de ressource Observation pour décrire la fréquence respiratoire d'un patient"
* extension[bodyPosition].valueCodeableConcept = $SCT#33586001 "Sitting position (finding)"
* extension[levelOfExertion].valueCodeableConcept.text = "Au repos"
* status = #final
* subject = Reference(FRCorePatientExample)
  * type = "Patient"
* performer = Reference(FRCorePractitionerExample)
* effectiveDateTime = "2022-11-06"
* valueQuantity = 16 '/min' "respirations/minute"
* method = $SCT#32750006 "Inspection (procedure)"
