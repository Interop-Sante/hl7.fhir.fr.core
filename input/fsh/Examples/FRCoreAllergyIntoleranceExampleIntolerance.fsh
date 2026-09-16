Instance: FRCoreAllergyIntoleranceExampleIntolerance
InstanceOf: fr-core-allergy-intolerance
Usage: #example
Description: "Exemple de ressource AllergyIntolerance : intolérance au paracétamol"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* criticality = #low

* code = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"

* patient = Reference(FRCorePatientINSExample)
  * type = "Patient"

* onsetDateTime = "2024-05-10"
* recordedDate = "2024-05-12"

* reaction
  * substance = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"
  * manifestation = https://smt.esante.gouv.fr/terminologie-cim11-mms#MD81 "Douleur abdominale ou pelvienne"
  * severity = #mild
  * onset = "2024-05-10"
