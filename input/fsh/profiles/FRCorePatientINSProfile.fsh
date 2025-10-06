Profile: FRCorePatientINSProfile
Parent: fr-core-patient
Id: fr-core-patient-ins
Title: "FR Core Patient INS Profile"
Description: """Profil Fr Core Patient surspécifié pour être conforme aux exigences du référentiel d'Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d'une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient."""

* obeys fr-core-1 
* obeys fr-core-2

* meta.profile contains fr-ins-canonical 0..1
* meta.profile[fr-ins-canonical] = Canonical(fr-core-patient-ins)

* extension[identityReliability].extension[identityStatus] = #VALI 
* extension[identityReliability].extension[validationMode] only fr-core-vs-mode-validation-identity-ins (required)


* extension[birthPlace] 1..1
* extension[birthPlace] MS
* extension[birthPlace].valueAddress.extension[inseeCode] 1..1

* identifier 1..

* identifier contains
    INS-NIR 0..* and
    INS-NIR-TEST 0..* and
    INS-NIR-DEMO 0..* and
    INS-NIA 0..*

// Slices définies dans PatientINS car ne peuvent pas être véhiculé si identité non qualifiée.

* identifier[INS-NIR] ^short = "INS-NIR - The patient national health identifier INS obtained by requesting the national patient identification service (CNAM) called the INSi teleservice. Identifiant national de santé (NIR) du patient INS provenant du téléservice INSi (service national d'identification des patients (CNAM))"
* identifier[INS-NIR] MS
* identifier[INS-NIR].use 1..
* identifier[INS-NIR].use from FRCoreValueSetPatientIdentifierUseINS  (required)
* identifier[INS-NIR].use ^short = "official | old"
* identifier[INS-NIR].use ^comment = "La valeur old permet d'identifier des INS désactivés (permettant de noter l'ancien INS-NIR en cas de changement de sexe par exemple)"
* identifier[INS-NIR].type 1..
* identifier[INS-NIR].type = $fr-core-v2-0203#INS-NIR
* identifier[INS-NIR].system 1..
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].system ^short = "Autorité d'affectation des INS-NIR"
* identifier[INS-NIR].value 1..

* identifier[INS-NIA] ^short = "INS-NIA - The temporary patient health national identifier obtained by requesting the national patient identification service (CNAM)| Identifiant national temporaire de santé du patient obtenu par interrogation du téléservice INSi de la CNAM"
* identifier[INS-NIA] MS
* identifier[INS-NIA].use 1..
* identifier[INS-NIA].use from FRCoreValueSetPatientIdentifierUseINS (required)
* identifier[INS-NIA].use ^short = "official | old"
* identifier[INS-NIA].use ^comment = "Un INS d'attente est à la fois officiel et temporaire. Pour éviter les différences d'interprétation, il a été conclu en 2025 que l'INS-NIA est avant tout le numéro officiel à un instant donné. La valeur old permet d'identifier des INS désactivés (en cas d'obtention d'un INS-NIR par exemple)"
* identifier[INS-NIA].type 1..
* identifier[INS-NIA].type = $fr-core-v2-0203#INS-NIA
* identifier[INS-NIA].system 1..
* identifier[INS-NIA].system = "urn:oid:1.2.250.1.213.1.4.9"
* identifier[INS-NIA].system ^short = "Autorité d'affectation des INS-NIA"
* identifier[INS-NIA].value 1..


* identifier[INS-NIR-TEST] ^short = "Identifiant INS-NIR du patient fictif de test"
* identifier[INS-NIR-TEST].use 1..
* identifier[INS-NIR-TEST].use = #official
* identifier[INS-NIR-TEST].type 1..
* identifier[INS-NIR-TEST].type = $fr-core-v2-0203#INS-NIR-TEST
* identifier[INS-NIR-TEST].system 1..
* identifier[INS-NIR-TEST].system = "urn:oid:1.2.250.1.213.1.4.10"
* identifier[INS-NIR-TEST].system ^short = "Autorité d’affectation des INS-NIR de test"
* identifier[INS-NIR-TEST].value 1..

* identifier[INS-NIR-DEMO] ^short = "Identifiant INS-NIR du patient fictif de démonstration"
* identifier[INS-NIR-DEMO].use 1..
* identifier[INS-NIR-DEMO].use = #official
* identifier[INS-NIR-DEMO].type 1..
* identifier[INS-NIR-DEMO].type = $fr-core-v2-0203#INS-NIR-DEMO
* identifier[INS-NIR-DEMO].system 1..
* identifier[INS-NIR-DEMO].system = "urn:oid:1.2.250.1.213.1.4.11"
* identifier[INS-NIR-DEMO].system ^short = "Autorité d’affectation des INS-NIR de démonstration"
* identifier[INS-NIR-DEMO].value 1..

* gender 1..1 MS

* birthDate 1.. MS

* name[officialName] 1..1 MS
* name[officialName].given 1..1
* name[officialName].given ^short = "Dans le cas d’une identité créée ou modifiée par un appel au téléservice INSi, il est nécessaire d’extraire le premier prénom de la liste des prénoms retournée par le téléservice et de l'inclure dans le champs given. En cas de prénom composé, given peut par exemple contenir 'Anne-sophie' ou 'Anne Sophie'."

* name[officialName].extension[birth-list-given-name] 1..1 MS


Invariant:   fr-core-1
Description: "If identityReliability status = 'VALI', then at least Patient.identifier[INS-NIR] or Patient.identifier[INS-NIA] or Patient.identifier[INS-NIR-TEST]or Patient.identifier[INS-NIR-DEMO] SHALL be present"
* severity = #error
* expression = "(extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability').extension('identityStatus').value.exists(code = 'VALI')) implies (identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.8' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.9' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.10' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.11' and use = 'official').exists())"

Invariant:   fr-core-2
Description: "If identityReliability status = 'VALI', then only one identifier of type official SHALL be present"
* severity = #error
* expression = "(extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability').extension('identityStatus').value.exists(code = 'VALI')) implies (identifier.where(use = 'official').count() = 1).exists())"
