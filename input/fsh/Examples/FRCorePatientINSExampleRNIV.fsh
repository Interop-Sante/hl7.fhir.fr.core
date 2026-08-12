Instance: FRCorePatientINSExampleRNIV
InstanceOf: fr-core-patient-ins
Usage: #example
Description: "Exemple de ressource Patient (cas d'usage INS) — jeu de données de référence RNIV, identité qualifiée"

// identityReliability
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status#QUAL

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#88154
* extension[birthPlace].valueAddress.city = "Domrémy-la-Pucelle"

* identifier[INS-NIR].value = "260058815400233"
* identifier[INS-NIR].use = #official

* name[officialName].family = "Dark"
* name[officialName].given[0] = "Jeanne"
* name[officialName].extension[birth-list-given-name].valueString = "Jeanne Marie Cécile"

* gender = #female
* birthDate = "1960-05-30"
