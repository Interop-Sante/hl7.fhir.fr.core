# FR Core CodeSystem Location Identifier Type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Identifier Type**

## CodeSystem: FR Core CodeSystem Location Identifier Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type | *Version*:2.2.0-ballot |
| Draft as of 2025-10-22 | *Computable Name*:FRCoreCodeSystemLocationIdentifierType |

 
Location identifier type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetLocationIdentifierType](ValueSet-fr-core-vs-location-identifier-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-identifier-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemLocationIdentifierType",
  "title" : "FR Core CodeSystem Location Identifier Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-22T14:21:04+00:00",
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
  "description" : "Location identifier type",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "INTRN",
      "display" : "Identifiant interne",
      "definition" : "Identifiant interne"
    },
    {
      "code" : "EXTRN",
      "display" : "Identifiant externe",
      "definition" : "Identifiant externe"
    },
    {
      "code" : "GLBL",
      "display" : "Identifiant global",
      "definition" : "Identifiant global"
    },
    {
      "code" : "IDNST",
      "display" : "Identification nationale de structure définie par l'ANS dans le CI-SIS",
      "definition" : "Identification nationale de structure définie par l'ANS dans le CI-SIS"
    }
  ]
}

```
