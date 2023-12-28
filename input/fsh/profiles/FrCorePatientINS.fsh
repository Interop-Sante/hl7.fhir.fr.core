Profile: FRCorePatientINSProfile
Parent: fr-core-patient
Id: fr-core-patient-ins
Title: "FR Core Patient INS Profile"
Description: """Profil FrPatient appliqué à l'INS avec identité validée, permettant d'indiquer les contraintes fortes nécessaires pour modéliser un patient avec une INS validée. Une ressource conforme au profil FRCorePatientINSProfile sera également conforme au profil FRCorePatientProfile grâce au principe d'héritage, il n'est donc pas nécessaire d'avoir une instance de chaque profil pour un même patient. Pour plus d'informations sur le contexte du patient INS, consultez le référentiel national d'identitovigilance (RNIV) et la documentation du référentiel INS de l'ANS ."""

* obeys fr-core-1

* extension[identityReliability] 1..1
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-fiabilite-identite#VALI

* extension[birthPlace] 1..1
* extension[birthPlace].valueAddress.extension[inseeCode] 1..1


* identifier 1..

* identifier contains
    INS-NIR 0..* and
    INS-NIA 0..*

// Slices définies dans PatientINS car ne peuvent pas être véhiculé si identité non qualifiée.

* identifier[INS-NIR] ^short = "The patient's health national identifier INS coming from the INSi teleservice| Identifiant national de santé du patient INS provenant du téléservice INSi"
* identifier[INS-NIR] ^definition = "patient's national identifier obtained by requesting the national patient identification service (CNAM) | Identifiant NIR du patient récupéré à partir de l'interrogation du service national d'identification des patients (CNAM)"
* identifier[INS-NIR].use = #official
* identifier[INS-NIR].type = $fr-core-v2-0203#INS-NIR
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].system ^short = "Autorité d'affectation des INS-NIR"
* identifier[INS-NIR].value 1..

* identifier[INS-NIA] ^short = "INS-NIA"
* identifier[INS-NIA] ^definition = "The temporary patient's health national identifier obtained by requesting the national patient identification service (CNAM)| Identifiant national temporaire de santé du patient obtenu par interrogation du téléservice INSi de la CNAM"
* identifier[INS-NIA].use = #temp
* identifier[INS-NIA].type = $fr-core-v2-0203#INS-NIA
* identifier[INS-NIA].system = "urn:oid:1.2.250.1.213.1.4.9"
* identifier[INS-NIA].system ^short = "Autorité d'affectation des INS-NIA"
* identifier[INS-NIA].value 1..

* gender 1..1
* gender from fr-core-patient-gender-INS (required)
* gender ^short = "male | female | unknown"

* birthDate 1..

* name[officialName] 1..1
* name[officialName].given 1..1
* name[officialName].given ^short = "Dans le cas d’une identité créée ou modifiée par un appel au téléservice INSi, il est nécessaire d’extraire le premier prénom de la liste des prénoms retournée par le téléservice et de l'inclure dans le champs given. En cas de prénom composé, given peut par exemple contenir 'Anne-sophie' ou 'Anne Sophie'."

* name[officialName].extension contains fr-core-patient-birth-list-given-name named birth-list-given-name 1..1


Invariant:   fr-core-1
Description: "Patient.identifier[INS-NIR] or Patient.identifier[INS-NIA] or both SHALL be present"
* severity = #error
* expression = "identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.8').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.9').exists()"
