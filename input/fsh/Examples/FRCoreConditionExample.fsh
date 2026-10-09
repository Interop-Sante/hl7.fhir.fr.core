Instance: FRCoreConditionExample
InstanceOf: fr-core-condition
Usage: #example
Description: "Exemple de ressource Condition : asthme chronique actif chez un patient identifié par son INS"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category = $SCT#64572001 "maladie"

* severity = $SCT#24484000 "gravité sévère"

* code = https://smt.esante.gouv.fr/terminologie-cim-10#J45.9 "Asthme, sans précision"

* subject = Reference(FRCorePatientINSExample)
  * type = "Patient"

* onsetDateTime = "2023-06-01"
* recordedDate = "2023-06-05"

* bodySite = $SCT#39607008 "poumon"

* stage.summary = $SCT#27624003 "maladie chronique"
