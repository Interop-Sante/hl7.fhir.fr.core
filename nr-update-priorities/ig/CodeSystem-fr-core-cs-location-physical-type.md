# FR Core CodeSystem Location Physical Type - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Physical Type**

## CodeSystem: FR Core CodeSystem Location Physical Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type | *Version*:2.2.0-ballot |
| Draft as of 2025-12-29 | *Computable Name*:FRCoreCodeSystemLocationPhysicalType |

 
Location physical type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationPhysicalType](ValueSet-fr-core-vs-location-physical-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-physical-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemLocationPhysicalType",
  "title" : "FR Core CodeSystem Location Physical Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-29T10:22:56+00:00",
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
  "description" : "Location physical type",
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
      "code" : "FTL",
      "display" : "Emplacement fauteuil",
      "definition" : "Emplacement fauteuil"
    },
    {
      "code" : "BTMNT",
      "display" : "Bâtiment",
      "definition" : "Bâtiment"
    },
    {
      "code" : "L",
      "display" : "Lieu non spécifié",
      "definition" : "Lieu non spécifié"
    },
    {
      "code" : "ETG",
      "display" : "Etage",
      "definition" : "Etage"
    },
    {
      "code" : "AL",
      "display" : "Aile",
      "definition" : "Aile"
    },
    {
      "code" : "CLR",
      "display" : "Couloir",
      "definition" : "Couloir"
    },
    {
      "code" : "R",
      "display" : "Chambre",
      "definition" : "Chambre"
    },
    {
      "code" : "BX",
      "display" : "Box",
      "definition" : "Box"
    },
    {
      "code" : "PT",
      "display" : "Point",
      "definition" : "Point"
    },
    {
      "code" : "B",
      "display" : "Emplacement lit",
      "definition" : "Emplacement lit"
    },
    {
      "code" : "BLC",
      "display" : "Bloc",
      "definition" : "Bloc"
    },
    {
      "code" : "BR",
      "display" : "Bureau",
      "definition" : "Bureau"
    }
  ]
}

```
