Instance: FRCoreAllergyIntoleranceExampleHypersensibilite
InstanceOf: fr-core-allergy-intolerance
Usage: #example
Description: "Exemple de ressource AllergyIntolerance : hypersensibilité non allergique au paracétamol"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type.extension[type].valueCodeableConcept = $SCT#609396006 "hypersensibilité non allergique"
* criticality = #low

* code = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"

* patient = Reference(FRCorePatientINSExample)
  * type = "Patient"

* onsetDateTime = "2024-04-02"
* recordedDate = "2024-04-05"

* reaction
  * substance = https://smt.esante.gouv.fr/terminologie-sms#100000090270 "Paracetamol"
  * manifestation = https://smt.esante.gouv.fr/terminologie-cim11-mms#ME62 "Éruption cutanée aigüe de nature incertaine ou non précisée"
  * severity = #moderate
  * onset = "2024-04-02"
