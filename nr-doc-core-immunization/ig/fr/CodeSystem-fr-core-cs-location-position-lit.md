# FR Core CodeSystem Position du lit - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Position du lit 

 
Position du lit dans la chambre 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetLocationPositionLit](ValueSet-fr-core-vs-location-position-lit.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-position-lit",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-lit",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemPositionLit",
  "title" : "FR Core CodeSystem Position du lit",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:21:29+00:00",
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
  "description" : "Position du lit dans la chambre",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "FNTR",
    "display" : "Fenêtre",
    "definition" : "Fenêtre"
  },
  {
    "code" : "CLR",
    "display" : "Couloir",
    "definition" : "Couloir"
  },
  {
    "code" : "ML",
    "display" : "Milieu",
    "definition" : "Milieu"
  }]
}

```
