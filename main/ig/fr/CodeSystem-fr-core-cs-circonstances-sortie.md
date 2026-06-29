# FR Core CodeSystem Circonstances Sortie - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Circonstances Sortie 

 
Discharge Disposition 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetEncounterDischargeDisposition](ValueSet-fr-core-vs-encounter-discharge-disposition.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-circonstances-sortie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemCirconstancesSortie",
  "title" : "FR Core CodeSystem Circonstances Sortie",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-29T09:30:52+00:00",
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
  "description" : "Discharge Disposition",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "2",
    "display" : "Mesure disciplinaire",
    "definition" : "Mesure disciplinaire"
  },
  {
    "code" : "3",
    "display" : "Décision médicale",
    "definition" : "Décision médicale"
  },
  {
    "code" : "4",
    "display" : "Contre avis médical",
    "definition" : "Contre avis médical"
  },
  {
    "code" : "5",
    "display" : "en attente d'examen",
    "definition" : "en attente d'examen"
  },
  {
    "code" : "6",
    "display" : "Convenance personnelle",
    "definition" : "Convenance personnelle"
  },
  {
    "code" : "R",
    "display" : "Essai (contexte psychiatrique)",
    "definition" : "Essai (contexte psychiatrique)"
  },
  {
    "code" : "E",
    "display" : "Evasion",
    "definition" : "Evasion"
  },
  {
    "code" : "F",
    "display" : "Fugue",
    "definition" : "Fugue"
  },
  {
    "code" : "A",
    "display" : "Absence ( < 12h)",
    "definition" : "Absence ( < 12h)"
  },
  {
    "code" : "P",
    "display" : "Permission ( <72h)",
    "definition" : "Permission ( <72h)"
  },
  {
    "code" : "S",
    "display" : "Sortie avec programme de soins",
    "definition" : "Sortie avec programme de soins"
  },
  {
    "code" : "B",
    "display" : "Départ vers MCO",
    "definition" : "Départ vers MCO"
  },
  {
    "code" : "REO",
    "display" : "Réorientation",
    "definition" : "Réorientation"
  },
  {
    "code" : "PSA",
    "display" : "Patient parti sans attendre les soins",
    "definition" : "Patient parti sans attendre les soins"
  }]
}

```
