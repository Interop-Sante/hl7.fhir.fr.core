Instance: FRCoreEncounterExample
InstanceOf: fr-core-encounter
Usage: #example
Description: "Exemple de ressource Appointment pour décrire une rencontre dans un cadre médical"
* extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date"
* extension.valueDate = "2019-01-02"
* identifier.system = "http://encounter-identifier-system.org"
* identifier.value = "123"
* identifier.type = FRCoreCodeSystemIdentifierType#VN
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* period.start = "2019-01-02"
* period.end = "2019-02-02"




