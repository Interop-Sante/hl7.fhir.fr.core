# FR Core CodeSystem Type Admission - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Type Admission**

## CodeSystem: FR Core CodeSystem Type Admission 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-admission | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-01-29 | *Computable Name*:FRCoreCodeSystemTypeAdmission |

 
Admission type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetEncounterType](ValueSet-fr-core-vs-encounter-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-type-admission",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-admission",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemTypeAdmission",
  "title" : "FR Core CodeSystem Type Admission",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-29T08:34:51+00:00",
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
  "description" : "Admission type",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
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
      "code" : "RM",
      "display" : "Rétrocession de médicament",
      "definition" : "Rétrocession de médicament"
    },
    {
      "code" : "IE",
      "display" : "Prestation inter-établissements",
      "definition" : "Prestation inter-établissements"
    }
  ]
}

```
