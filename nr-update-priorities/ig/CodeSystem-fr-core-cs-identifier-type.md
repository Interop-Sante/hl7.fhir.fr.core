# FR Core CodeSystem Identifier Type - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Identifier Type**

## CodeSystem: FR Core CodeSystem Identifier Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type | *Version*:2.2.0-ballot |
| Draft as of 2025-12-29 | *Computable Name*:FRCoreCodeSystemIdentifierType |

 
Identifier type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetEncounterIdentifierType](ValueSet-fr-core-vs-encounter-identifier-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-identifier-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemIdentifierType",
  "title" : "FR Core CodeSystem Identifier Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-29T10:23:39+00:00",
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
  "description" : "Identifier type",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "VN",
      "display" : "Visit Number",
      "definition" : "Visit Number"
    },
    {
      "code" : "MN",
      "display" : "Movement Number",
      "definition" : "Movement Number"
    }
  ]
}

```
