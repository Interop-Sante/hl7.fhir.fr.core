# FR Core CodeSystem Type Admission - Guide d'implémentation FR Core v3.0.0-ballot

## CodeSystem: FR Core CodeSystem Type Admission 

This Code system is referenced in the definition of the following value sets:

* [FR Core ValueSet Encounter type](ValueSet-fr-core-vs-encounter-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "version" : "3.0.0-ballot",
  "name" : "FRCoreCodeSystemTypeAdmission",
  "title" : "FR Core CodeSystem Type Admission",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:58:11+00:00",
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
