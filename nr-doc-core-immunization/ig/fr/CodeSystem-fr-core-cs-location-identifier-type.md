# FR Core CodeSystem Location Identifier Type - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Location Identifier Type 

 
Location identifier type 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* Cette terminologie de référence (CodeSystem) n'est pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemLocationIdentifierType",
  "title" : "FR Core CodeSystem Location Identifier Type",
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
  "description" : "Location identifier type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
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
  }]
}

```
