Instance: FRCorePatientDeceasedExample
InstanceOf: fr-core-patient
Usage: #example
Description: "Exemple de ressource Patient décédé illustrant les extensions deathPlace, lunarDate et assemblyOrder"

// deathPlace
* extension[deathPlace].valueAddress.text = "CHU de Paris, Paris, France"
* extension[deathPlace].valueAddress.city = "Paris"
* extension[deathPlace].valueAddress.postalCode = "75014"

// lunarDate (date de naissance approximative selon calendrier)
* extension[https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date].valueString = "1950-03-10"

* identifier[PI].use = #usual
* identifier[PI].system = "http://hopital.fr/namingsystem/ipp"
* identifier[PI].value = "IPP-999-001"

* active = false

* name[officialName].use = #official
* name[officialName].family = "Martin"
* name[officialName].given[0] = "Jean"
* gender = #male
* birthDate = "1950-03-10"
* deceasedDateTime = "2024-01-15"
