# FR Core CodeSystem Location Type - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Type**

## CodeSystem: FR Core CodeSystem Location Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemLocationType |

 
Location type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationType](ValueSet-fr-core-vs-location-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemLocationType",
  "title" : "FR Core CodeSystem Location Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-28T08:22:20+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
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
  "description" : "Location type",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [
    {
      "code" : "PRSN_NGTV",
      "display" : "Pression négative",
      "definition" : "Pression négative"
    },
    {
      "code" : "PRSN_PSTV",
      "display" : "Pression positive",
      "definition" : "Pression positive"
    },
    {
      "code" : "CRCRL",
      "display" : "Carcéral",
      "definition" : "Carcéral"
    },
    {
      "code" : "CPTN",
      "display" : "Capitonné",
      "definition" : "Capitonné"
    },
    {
      "code" : "PNT_CLCT",
      "display" : "Point de collecte",
      "definition" : "Point de collecte"
    },
    {
      "code" : "PNT_LVRSN",
      "display" : "Point de livraison",
      "definition" : "Point de livraison"
    },
    {
      "code" : "SL_ATNT",
      "display" : "Salle d’attente",
      "definition" : "Salle d’attente"
    },
    {
      "code" : "SL_RVL",
      "display" : "Salle réveil",
      "definition" : "Salle réveil"
    },
    {
      "code" : "SL_EXM",
      "display" : "Salle examen",
      "definition" : "Salle examen"
    },
    {
      "code" : "SL_RN",
      "display" : "Salle de réunion",
      "definition" : "Salle de réunion"
    },
    {
      "code" : "SL_TRV",
      "display" : "Salle de travail",
      "definition" : "Salle de travail"
    },
    {
      "code" : "ACC",
      "display" : "Point d'accueil",
      "definition" : "Point d'accueil"
    }
  ]
}

```
