# FR Core CodeSystem Type Admission - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Type Admission 

 
Admission type 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetEncounterType](ValueSet-fr-core-vs-encounter-type.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-type-admission",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-admission",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemTypeAdmission",
  "title" : "FR Core CodeSystem Type Admission",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-29T12:42:10+00:00",
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
  "description" : "Admission type",
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
    "code" : "RM",
    "display" : "Rétrocession de médicament",
    "definition" : "Rétrocession de médicament"
  },
  {
    "code" : "IE",
    "display" : "Prestation inter-établissements",
    "definition" : "Prestation inter-établissements"
  }]
}

```
