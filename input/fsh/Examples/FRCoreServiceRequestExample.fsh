Instance: FRCoreServiceRequestExample
InstanceOf: fr-core-service-request
Usage: #example
Description: "Exemple de ressource ServiceRequest : demande d'échographie abdominale"

* status = #active
* intent = #order

* category = $SCT#363679005 "imagerie"

* identifier[accessionNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[accessionNumber].system = "http://servicerequest-accession-number-system.org"
* identifier[accessionNumber].value = "AN-2024-00456"

* code = $SCT#45036003 "échographie de l'abdomen"

* occurrenceDateTime = "2024-09-10"

* subject = Reference(FRCorePatientINSExample)
  * type = "Patient"

* bodySite = $SCT#818983003 "abdomen"

* extension[method].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationMethod#0012 "Ultrasonographie"

* note.text = "Recherche de calculs biliaires, patient symptomatique."
