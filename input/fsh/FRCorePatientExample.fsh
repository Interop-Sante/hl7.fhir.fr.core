

Instance: FRCorePatientExample
InstanceOf: fr-core-patient
Usage: #example
Description: "Exemple de ressource Patient (cas d'usage INS)"

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#01006
* extension[birthPlace].valueAddress.city = "Ambléon"