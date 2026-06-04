# FR Core CodeSystem Marital Status - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Marital Status 

 
Marital status 

* [FRCoreValueSetMaritalStatus](ValueSet-fr-core-vs-marital-status.md)

-------

 . 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-marital-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-marital-status",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemMaritalStatus",
  "title" : "FR Core CodeSystem Marital Status",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-04T15:08:19+00:00",
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
  "description" : "Marital status",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "PACS",
    "display" : "PACS",
    "definition" : "PACS"
  }]
}

```
