# FR Core CodeSystem Marital Status - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Marital Status**

## CodeSystem: FR Core CodeSystem Marital Status 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-marital-status | *Version*:2.2.0-ballot |
| Draft as of 2026-01-09 | *Computable Name*:FRCoreCodeSystemMaritalStatus |

 
Marital status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetMaritalStatus](ValueSet-fr-core-vs-marital-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-marital-status",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-marital-status",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemMaritalStatus",
  "title" : "FR Core CodeSystem Marital Status",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-09T10:08:27+00:00",
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
  "description" : "Marital status",
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
  "count" : 1,
  "concept" : [
    {
      "code" : "PACS",
      "display" : "PACS",
      "definition" : "PACS"
    }
  ]
}

```
