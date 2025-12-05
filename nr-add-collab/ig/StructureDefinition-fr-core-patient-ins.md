# FR Core Patient INS Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Patient INS Profile**

## Resource Profile: FR Core Patient INS Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCorePatientINSProfile |

 
FR Core Patient profile overspecified to comply with the requirements of the National Health Identity (INS) framework. The INS identifier can only be conveyed in the case of a qualified identity, which is why the identifier slices are defined in the FRCorePatientINS profile and not in the FRCorePatient profile. 
Profil Fr Core Patient surspécifié pour être conforme aux exigences du référentiel d’Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d’une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient. 

### Usage

Le profil hérite de FRCorePatient enrichi de l’identité INS récupérée par le téléservice INSi et potentiellement qualifiée.

Ce profil permet d’indiquer les contraintes fortes nécessaires pour modéliser un patient avec les traits INS et le matricule INS, marqués en MustSupport (carré rouge contenant un S).

Une ressource conforme au profil FRCorePatientINSProfile sera également conforme au profil FRCorePatientProfile grâce au principe d’héritage, il n’est donc pas nécessaire d’avoir une instance de chaque profil pour un même patient.

Les identifiants INS-NIR ne peuvent être véhiculés uniquement dans le cas d’un patient qualifié (cf EXI 12 du référentiel INS version 2.1), raison pour laquelle les slices identifier sont définies au niveau du FrCorePatientINS et non au niveau du FrCorePatient.

Pour plus d’informations sur le contexte du patient INS, consultez le référentiel national d’identitovigilance (RNIV) et la documentation du référentiel INS de l’ANS :

* [Référentiel INS](https://esante.gouv.fr/produits-services/referentiel-ins)
* [Annexe – Prise en Charge de l’INS dans les volets du CI-SIS](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis)

**Utilisations:**

* Exemples pour ce Profil: [Patient/FRCorePatientExample](Patient-FRCorePatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-ins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-patient-ins.csv), [Excel](StructureDefinition-fr-core-patient-ins.xlsx), [Schematron](StructureDefinition-fr-core-patient-ins.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-ins",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientINSProfile",
  "title" : "FR Core Patient INS Profile",
  "status" : "active",
  "date" : "2025-12-05T08:27:25+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "FR Core Patient profile overspecified to comply with the requirements of the National Health Identity (INS) framework. The INS identifier can only be conveyed in the case of a qualified identity, which is why the identifier slices are defined in the FRCorePatientINS profile and not in the FRCorePatient profile.\r\n\nProfil Fr Core Patient surspécifié pour être conforme aux exigences du référentiel d'Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d'une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0-ballot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "fr-core-1",
            "severity" : "error",
            "human" : "If identityReliability status = 'VALI', then at least Patient.identifier[INS-NIR] or Patient.identifier[INS-NIA] or Patient.identifier[INS-NIR-TEST] or Patient.identifier[INS-NIR-DEMO] SHALL be present",
            "expression" : "(extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability').extension('identityStatus').value.exists(code = 'VALI')) implies (identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.8' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.9' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.10' and use = 'official').exists() or identifier.where(system = 'urn:oid:1.2.250.1.213.1.4.11' and use = 'official').exists())",
            "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0-ballot"
          },
          {
            "key" : "fr-core-2",
            "severity" : "error",
            "human" : "If identityReliability status = 'VALI', then only one identifier of type official SHALL be present",
            "expression" : "(extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability').extension('identityStatus').value.exists(code = 'VALI')) implies (identifier.where(use = 'official').count() = 1)",
            "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0-ballot"
          }
        ]
      },
      {
        "id" : "Patient.meta.profile:fr-ins-canonical",
        "path" : "Patient.meta.profile",
        "sliceName" : "fr-ins-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0-ballot"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "min" : 1
      },
      {
        "id" : "Patient.extension:identityReliability",
        "path" : "Patient.extension",
        "sliceName" : "identityReliability"
      },
      {
        "id" : "Patient.extension:identityReliability.extension:validationMode",
        "path" : "Patient.extension.extension",
        "sliceName" : "validationMode"
      },
      {
        "id" : "Patient.extension:identityReliability.extension:validationMode.value[x]",
        "path" : "Patient.extension.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity-ins|2.2.0-ballot"
        }
      },
      {
        "id" : "Patient.extension:birthPlace",
        "path" : "Patient.extension",
        "sliceName" : "birthPlace",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:birthPlace.value[x].extension",
        "path" : "Patient.extension.value[x].extension",
        "min" : 1
      },
      {
        "id" : "Patient.extension:birthPlace.value[x].extension:inseeCode",
        "path" : "Patient.extension.value[x].extension",
        "sliceName" : "inseeCode",
        "min" : 1
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:INS-NIR",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR",
        "short" : "INS-NIR - The patient national health identifier INS obtained by requesting the national patient identification service (CNAM) called the INSi teleservice. Identifiant national de santé (NIR) du patient INS provenant du téléservice INSi (service national d'identification des patients (CNAM))",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:INS-NIR.use",
        "path" : "Patient.identifier.use",
        "short" : "official | old",
        "comment" : "La valeur old permet d'identifier des INS désactivés (permettant de noter l'ancien INS-NIR en cas de changement de sexe par exemple)",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-ins|2.2.0-ballot"
        }
      },
      {
        "id" : "Patient.identifier:INS-NIR.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "INS-NIR"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:INS-NIR.system",
        "path" : "Patient.identifier.system",
        "short" : "Autorité d'affectation des INS-NIR",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.213.1.4.8"
      },
      {
        "id" : "Patient.identifier:INS-NIR.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR-TEST",
        "short" : "Identifiant INS-NIR du patient fictif de test",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST.use",
        "path" : "Patient.identifier.use",
        "min" : 1,
        "patternCode" : "official"
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "INS-NIR-TEST"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST.system",
        "path" : "Patient.identifier.system",
        "short" : "Autorité d’affectation des INS-NIR de test",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.213.1.4.10"
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR-DEMO",
        "short" : "Identifiant INS-NIR du patient fictif de démonstration",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO.use",
        "path" : "Patient.identifier.use",
        "min" : 1,
        "patternCode" : "official"
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "INS-NIR-DEMO"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO.system",
        "path" : "Patient.identifier.system",
        "short" : "Autorité d’affectation des INS-NIR de démonstration",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.213.1.4.11"
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:INS-NIA",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIA",
        "short" : "INS-NIA - The temporary patient health national identifier obtained by requesting the national patient identification service (CNAM)| Identifiant national temporaire de santé du patient obtenu par interrogation du téléservice INSi de la CNAM",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:INS-NIA.use",
        "path" : "Patient.identifier.use",
        "short" : "official | old",
        "comment" : "Un INS d'attente est à la fois officiel et temporaire. Pour éviter les différences d'interprétation, il a été conclu en 2025 que l'INS-NIA est avant tout le numéro officiel à un instant donné. La valeur old permet d'identifier des INS désactivés (en cas d'obtention d'un INS-NIR par exemple)",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-ins|2.2.0-ballot"
        }
      },
      {
        "id" : "Patient.identifier:INS-NIA.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "INS-NIA"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:INS-NIA.system",
        "path" : "Patient.identifier.system",
        "short" : "Autorité d'affectation des INS-NIA",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.213.1.4.9"
      },
      {
        "id" : "Patient.identifier:INS-NIA.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1
      },
      {
        "id" : "Patient.name:officialName",
        "path" : "Patient.name",
        "sliceName" : "officialName",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:officialName.extension",
        "path" : "Patient.name.extension",
        "min" : 1
      },
      {
        "id" : "Patient.name:officialName.extension:birth-list-given-name",
        "path" : "Patient.name.extension",
        "sliceName" : "birth-list-given-name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:officialName.given",
        "path" : "Patient.name.given",
        "short" : "Dans le cas d’une identité créée ou modifiée par un appel au téléservice INSi, il est nécessaire d’extraire le premier prénom de la liste des prénoms retournée par le téléservice et de l'inclure dans le champs given. En cas de prénom composé, given peut par exemple contenir 'Anne-sophie' ou 'Anne Sophie'.",
        "max" : "1"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
