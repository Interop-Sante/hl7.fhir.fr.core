Instance: FRCorePatientExample
InstanceOf: fr-core-patient-ins
Description: "Exemple de ressource Patient (cas d'usage INS)"
Usage: #example

// identityReliability
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445#VALI

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#01006
* extension[birthPlace].valueAddress.city = "Ambléon"


* identifier[INS-NIR].value = "123456789012244"

* active = true

* name[officialName].family = "Durand"
* name[officialName].given[0] = "Pierre"
* name[officialName].extension[birth-list-given-name].valueString = "Pierre Yves"

* telecom[0].use = #home
* telecom[0].system = #phone
* telecom[0].value = "01 23 24 67 89"
* telecom[+].use = #work
* telecom[=].rank = 1
* telecom[=].system = #phone
* telecom[=].value = "01 99 88 77 66"
* telecom[+].use = #mobile
* telecom[=].rank = 2
* telecom[=].system = #phone
* telecom[=].value = "06 80 55 34 33"

* gender = #male
* birthDate = "1974-12-25"
* deceasedBoolean = false
* address
  * use = #home
  * type = #both
  * text = "367 rue Troussier, 45100 Orléans, France"
  * line = "367 rue Troussier"
  * city = "Orléans"
  * postalCode = "45100"
  * period.start = "2018-06-01"