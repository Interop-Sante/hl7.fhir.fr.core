# FR Core CodeSystem Type Chambre - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Type Chambre 

 
Type de chambre 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetLocationTypeChambre](ValueSet-fr-core-vs-location-type-chambre.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-type-chambre",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type-chambre",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemTypeChambre",
  "title" : "FR Core CodeSystem Type Chambre",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Type de chambre",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "STD",
    "display" : "Standard",
    "definition" : "Standard"
  },
  {
    "code" : "PRSN_NGTV",
    "display" : "Pression négative",
    "definition" : "Pression négative"
  },
  {
    "code" : "PRSN_PSTV",
    "display" : "Pression positive",
    "definition" : "Pression positive"
  },
  {
    "code" : "CRCRL",
    "display" : "Carcéral",
    "definition" : "Carcéral"
  },
  {
    "code" : "CPTN",
    "display" : "Capitonné",
    "definition" : "Capitonné"
  }]
}

```
