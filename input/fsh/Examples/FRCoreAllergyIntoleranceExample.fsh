Instance: FRCoreAllergyIntoleranceExample
InstanceOf: fr-core-allergy-intolerance
Usage: #example
Description: "Exemple de ressource AllergyIntolerance : allergie médicamenteuse au paracétamol avec réaction cutanée"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* criticality = #low

* code = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"

* patient = Reference(FRCorePatientINSExample)
  * type = "Patient"

* onsetDateTime = "2024-03-15"
* recordedDate = "2024-03-20"

* reaction
  * substance = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"
  * manifestation = $SCT#271807003 "éruption cutanée"
  * severity = #moderate
  * onset = "2024-03-15"
