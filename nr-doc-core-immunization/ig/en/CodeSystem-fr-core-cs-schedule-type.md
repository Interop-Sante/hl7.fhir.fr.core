# FR Core CodeSystem Schedule Type - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Schedule Type 

 
Schedule type 

This Code system is referenced in the definition of the following value sets:

* [FRCoreValueSetScheduleType](ValueSet-fr-core-vs-schedule-type.md)
* [FRCoreValueSetUnavailabilityReason](ValueSet-fr-core-vs-schedule-unavailability-reason.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-schedule-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemScheduleType",
  "title" : "FR Core CodeSystem Schedule Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "Schedule type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "busy-unavailable",
    "display" : "Indisponibilité",
    "definition" : "Indisponibilité"
  },
  {
    "code" : "free",
    "display" : "Disponibilité",
    "definition" : "Disponibilité"
  }]
}

```
