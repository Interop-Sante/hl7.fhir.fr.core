# FR Core CodeSystem Champ Activite - Codes du champ d'activité - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Champ Activite - Codes du champ d'activité 

 
Champ d’activité clinique de l’organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetOrganizationChampActivite](ValueSet-fr-core-vs-organization-champ-activite.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-champ-activite",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-champ-activite",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemChampActivite",
  "title" : "FR Core CodeSystem Champ Activite - Codes du champ d'activité",
  "status" : "draft",
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
  "description" : "Champ d'activité clinique de l'organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "MCO",
    "display" : "MCO",
    "definition" : "Médecine Chirurgie Obstétrique"
  },
  {
    "code" : "SMR",
    "display" : "SMR",
    "definition" : "Soins Médicaux et de Réadaptation"
  },
  {
    "code" : "HAD",
    "display" : "HAD",
    "definition" : "Hospitalisation à Domicile"
  },
  {
    "code" : "PSY",
    "display" : "PSY",
    "definition" : "Psychiatrie"
  },
  {
    "code" : "EHPAD",
    "display" : "EHPAD",
    "definition" : "Etablissement d'Hébergement pour Personnes Agées Dépendantes"
  },
  {
    "code" : "LG_SJR",
    "display" : "Long séjour",
    "definition" : "Long séjour"
  },
  {
    "code" : "MSN_RTRT",
    "display" : "Maison de retraite",
    "definition" : "Maison de retraite"
  },
  {
    "code" : "ATR",
    "display" : "Autre",
    "definition" : "Autre"
  }]
}

```
