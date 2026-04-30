Instance: FRCoreMedicationAdministrationInhaledOxygenExample
InstanceOf: fr-core-medication-administration-inhaled-oxygen
Usage: #example
Description: "Exemple de ressource MedicationAdministration pour décrire l'administration d'oxygène inhalé"
* status = #in-progress
* medicationCodeableConcept.coding.system = "http://snomed.info/sct"
* medicationCodeableConcept.coding.code = #767111007
* medicationCodeableConcept.coding.display = "Product containing oxygen (medicinal product)"
* subject = Reference(FRCorePatientINSExample)
  * type = "Patient"
* effectivePeriod.start = "2022-11-06T09:00:00+01:00"
* performer.actor = Reference(FRCorePractitionerExample)
  * type = "Practitioner"
* dosage.route = $SCT#447694001 "Respiratory tract route (qualifier value)"
* dosage.text = "Oxygène 2 L/min par lunette nasale"
