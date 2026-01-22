# FR Core CodeSystem Location Type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Type**

## CodeSystem: FR Core CodeSystem Location Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type | *Version*:2.2.0-ballot |
| Active as of 2026-01-22 | *Computable Name*:FRCoreCodeSystemLocationType |

 
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
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemLocationType",
  "title" : "FR Core CodeSystem Location Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-22T11:51:24+00:00",
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
      "code" : "BAT",
      "display" : "Bâtiment"
    },
    {
      "code" : "ETAG",
      "display" : "Étage"
    },
    {
      "code" : "COUL",
      "display" : "Couloir"
    },
    {
      "code" : "AILE",
      "display" : "Aile"
    },
    {
      "code" : "BOX",
      "display" : "Box"
    },
    {
      "code" : "CHAMB",
      "display" : "Chambre"
    },
    {
      "code" : "LIT",
      "display" : "lit"
    },
    {
      "code" : "PL_TECH",
      "display" : "Plateau technique"
    },
    {
      "code" : "PNT_CLCT",
      "display" : "Point de collecte"
    },
    {
      "code" : "PNT_LVRSN",
      "display" : "Point de livraison"
    },
    {
      "code" : "SL_EXM",
      "display" : "Salle examen"
    },
    {
      "code" : "SL_CONS",
      "display" : "Salle de consultation"
    }
  ]
}

```
