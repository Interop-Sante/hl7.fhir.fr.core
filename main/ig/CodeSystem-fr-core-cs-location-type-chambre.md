# FR Core CodeSystem Type Chambre - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Type Chambre**

## CodeSystem: FR Core CodeSystem Type Chambre 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type-chambre | *Version*:2.2.0-ballot |
| Active as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemTypeChambre |

 
Type de chambre 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationTypeChambre](ValueSet-fr-core-vs-location-type-chambre.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-type-chambre",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type-chambre",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemTypeChambre",
  "title" : "FR Core CodeSystem Type Chambre",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T10:29:57+00:00",
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
  "description" : "Type de chambre",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "STD",
      "display" : "Standard"
    },
    {
      "code" : "PRSN_NGTV",
      "display" : "Pression négative"
    },
    {
      "code" : "PRSN_PSTV",
      "display" : "Pression positive"
    },
    {
      "code" : "CRCRL",
      "display" : "Carcéral"
    },
    {
      "code" : "CPTN",
      "display" : "Capitonné"
    }
  ]
}

```
