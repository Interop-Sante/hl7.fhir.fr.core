# FR Core CodeSystem Position du lit - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Position du lit**

## CodeSystem: FR Core CodeSystem Position du lit 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-lit | *Version*:2.2.0-ballot |
| Active as of 2026-01-22 | *Computable Name*:FRCoreCodeSystemPositionLit |

 
Position du lit dans la chambre 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationPositionLit](ValueSet-fr-core-vs-location-position-lit.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-position-lit",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-lit",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemPositionLit",
  "title" : "FR Core CodeSystem Position du lit",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-22T13:18:32+00:00",
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
  "description" : "Position du lit dans la chambre",
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
      "display" : "Fenêtre"
    },
    {
      "code" : "CLR",
      "display" : "Couloir"
    },
    {
      "code" : "ML",
      "display" : "Milieu"
    }
  ]
}

```
