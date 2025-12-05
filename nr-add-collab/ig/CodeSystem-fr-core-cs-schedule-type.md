# FR Core CodeSystem Schedule Type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Schedule Type**

## CodeSystem: FR Core CodeSystem Schedule Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type | *Version*:2.2.0-ballot |
| Draft as of 2025-12-05 | *Computable Name*:FRCoreCodeSystemScheduleType |

 
Schedule type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetScheduleType](ValueSet-fr-core-vs-schedule-type.md)
* [FRCoreValueSetUnavailabilityReason](ValueSet-fr-core-vs-schedule-unavailability-reason.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-schedule-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemScheduleType",
  "title" : "FR Core CodeSystem Schedule Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T08:27:25+00:00",
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
  "description" : "Schedule type",
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
      "code" : "busy-unavailable",
      "display" : "Indisponibilité",
      "definition" : "Indisponibilité"
    },
    {
      "code" : "free",
      "display" : "Disponibilité",
      "definition" : "Disponibilité"
    }
  ]
}

```
