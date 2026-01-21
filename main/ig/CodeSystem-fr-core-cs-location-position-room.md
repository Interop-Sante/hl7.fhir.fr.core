# FR Core CodeSystem Location Position Room - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Position Room**

## CodeSystem: FR Core CodeSystem Location Position Room 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-room | *Version*:2.2.0-ballot |
| Draft as of 2026-01-21 | *Computable Name*:FRCoreCodeSystemLocationPositionRoom |

 
Location position room 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationPositionRoom](ValueSet-fr-core-vs-location-position-room.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-position-room",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-room",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemLocationPositionRoom",
  "title" : "FR Core CodeSystem Location Position Room",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-21T08:47:55+00:00",
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
  "description" : "Location position room",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "FNTR",
      "display" : "Coté fenetre",
      "definition" : "Coté fenetre"
    },
    {
      "code" : "CLR",
      "display" : "coté couloir",
      "definition" : "coté couloir"
    },
    {
      "code" : "ML",
      "display" : "au mileu de la chambre",
      "definition" : "au mileu de la chambre"
    }
  ]
}

```
