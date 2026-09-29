Instance: FRCorePatientINSExampleRNIV
InstanceOf: fr-core-patient-ins
Usage: #example
Description: "Exemple de ressource Patient (cas d'usage INS) — jeu de données de référence RNIV, identité provisoire identifiée a posteriori comme doublon avéré et désactivée"

// identityReliability
// Identité créée localement sans appel au téléservice INSi (statut resté PROV), puis identifiée
// lors d'un dédoublonnage comme doublon avéré d'une identité déjà existante : elle est désactivée.
* extension[identityReliability].extension[lastUpdated].valueDateTime = "2025-01-15T09:30:00+01:00"
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status#PROV
* extension[identityReliability].extension[comment][0].valueCodeableConcept = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment#DOUA "Doublon avéré"
* extension[identityReliability].extension[comment][+].valueCodeableConcept = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment#DESA "Identité désactivée"

// birthPlace
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#88154
* extension[birthPlace].valueAddress.city = "Domrémy-la-Pucelle"

* identifier[PI].use = #usual
* identifier[PI].system = "http://hopital.fr/namingsystem/ipp"
* identifier[PI].value = "IPP-260-058"

// Identité désactivée suite au doublon avéré constaté ci-dessus
* active = false

* name[officialName].family = "Dark"
* name[officialName].given[0] = "Jeanne"
* name[officialName].extension[birth-list-given-name].valueString = "Jeanne Marie Cécile"

* gender = #female
* birthDate = "1960-05-30"
