Instance: FRCoreAllergyIntoleranceExampleIdiosyncrasie
InstanceOf: fr-core-allergy-intolerance
Usage: #example
Description: "Exemple de ressource AllergyIntolerance : réaction idiosyncrasique au paracétamol"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type.extension[type].valueCodeableConcept = $SCT#56840009 "idiosyncrasie"
* criticality = #low

* code = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"

* patient = Reference(FRCorePatientINSExample)
  * type = "Patient"

* onsetDateTime = "2024-06-01"
* recordedDate = "2024-06-03"

* reaction
  * substance = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"
  * manifestation = https://smt.esante.gouv.fr/terminologie-cim11-mms#MG22 "Asthénie"
  * severity = #mild
  * onset = "2024-06-01"
