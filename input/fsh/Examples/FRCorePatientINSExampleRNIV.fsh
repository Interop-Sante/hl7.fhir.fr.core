Instance: FRCorePatientINSExampleRNIV
InstanceOf: fr-core-patient-ins
Usage: #example
Description: "Exemple de ressource Patient (cas d'usage INS) — jeu de données de référence RNIV, identité provisoire"

// identityReliability
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status#PROV
* extension[identityReliability].extension[comment][0].valueCodeableConcept = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment#VIDE "Identité non encore qualifiée"
* extension[identityReliability].extension[comment][+].valueCodeableConcept = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment#IDVER "Identité vérifiée par le patient"

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#88154
* extension[birthPlace].valueAddress.city = "Domrémy-la-Pucelle"

* identifier[PI].use = #usual
* identifier[PI].system = "http://hopital.fr/namingsystem/ipp"
* identifier[PI].value = "IPP-260-058"

* name[officialName].family = "Dark"
* name[officialName].given[0] = "Jeanne"
* name[officialName].extension[birth-list-given-name].valueString = "Jeanne Marie Cécile"

* gender = #female
* birthDate = "1960-05-30"
