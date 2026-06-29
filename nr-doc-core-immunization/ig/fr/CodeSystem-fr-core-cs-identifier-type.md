# FR Core CodeSystem Identifier Type - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Identifier Type 

 
Identifier type 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetEncounterIdentifierType](ValueSet-fr-core-vs-encounter-identifier-type.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemIdentifierType",
  "title" : "FR Core CodeSystem Identifier Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "Identifier type",
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
    "code" : "VN",
    "display" : "Visit Number",
    "definition" : "Visit Number"
  },
  {
    "code" : "MN",
    "display" : "Movement Number",
    "definition" : "Movement Number"
  }]
}

```
