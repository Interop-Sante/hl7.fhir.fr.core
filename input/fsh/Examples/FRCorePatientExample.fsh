
Instance: FRCorePatientExample
InstanceOf: fr-core-patient-ins
Usage: #example
Description: "Exemple de ressource Patient (cas d'usage INS)"

// identityReliability
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445#VALI

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#01006
* extension[birthPlace].valueAddress.city = "Ambléon"

// nationality
* extension[nationality].extension[code].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Country#FRA "France"

// birthDateUpdateIndicator
* extension[birthDateUpdateIndicator].valueBoolean = false

* identifier[INS-NIR].value = "123456789012244"
* identifier[INS-NIR].use = #official

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

* contact[0].relationship[role].extension[category].valueCode = #role
* contact[0].relationship[role].coding[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
* contact[0].relationship[role].coding[0].code = #ECON
* contact[0].relationship[role].coding[0].display = "personne à prévenir en cas d'urgence"
* contact[0].relationship[relationType].extension[category].valueCode = #relationType
* contact[0].relationship[relationType].coding[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"
* contact[0].relationship[relationType].coding[0].code = #MTH
* contact[0].relationship[relationType].coding[0].display = "Mère"
* contact[0].extension[comment].valueString = "Mère du patient, à contacter en priorité"
* contact[0].extension[contactIdentifier].valueIdentifier.system = "urn:oid:1.2.250.1.213.1.4.8"
* contact[0].extension[contactIdentifier].valueIdentifier.value = "C98765"
* contact[0].name.family = "Durand"
* contact[0].name.given[0] = "Marie"
