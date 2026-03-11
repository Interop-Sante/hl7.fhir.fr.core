# FR Core CodeSystem Location Type - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Type**

## CodeSystem: FR Core CodeSystem Location Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type | *Version*:2.2.0-ballot-2 |
| Active as of 2026-03-11 | *Computable Name*:FRCoreCodeSystemLocationType |

 
Location type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationType](ValueSet-fr-core-vs-location-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemLocationType",
  "title" : "FR Core CodeSystem Location Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-11T17:39:13+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Location type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "BAT",
    "display" : "Bâtiment",
    "definition" : "Bâtiment"
  },
  {
    "code" : "ETAG",
    "display" : "Étage",
    "definition" : "Étage"
  },
  {
    "code" : "COUL",
    "display" : "Couloir",
    "definition" : "Couloir"
  },
  {
    "code" : "AILE",
    "display" : "Aile",
    "definition" : "Aile"
  },
  {
    "code" : "BOX",
    "display" : "Box",
    "definition" : "Box"
  },
  {
    "code" : "CHAMB",
    "display" : "Chambre",
    "definition" : "Chambre"
  },
  {
    "code" : "LIT",
    "display" : "Lit",
    "definition" : "Lit"
  },
  {
    "code" : "PL_TECH",
    "display" : "Plateau technique",
    "definition" : "Plateau technique"
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
    "code" : "SL_EXM",
    "display" : "Salle d'examen",
    "definition" : "Salle d'examen"
  },
  {
    "code" : "SL_CONS",
    "display" : "Salle de consultation",
    "definition" : "Salle de consultation"
  }]
}

```
