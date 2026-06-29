# FR Core CodeSystem v2-3311 - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem v2-3311 

 
HL7 v2 - Table 3311 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* Cette terminologie de référence (CodeSystem) n'est pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-v2-3311",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3311",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemv2_3311",
  "title" : "FR Core CodeSystem v2-3311",
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
  "description" : "HL7 v2 - Table 3311",
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
    "definition" : "Médecine, Chirurgie, Obstétrique"
  },
  {
    "code" : "SSR",
    "display" : "SSR",
    "definition" : "Soins de Suite et de Réadaptation"
  },
  {
    "code" : "HD",
    "display" : "HAD",
    "definition" : "Hospitalisation À Domicile"
  },
  {
    "code" : "EHPD",
    "display" : "EHPAD",
    "definition" : "Établissement d’Hébergement pour Personnes Âgées Dépendantes"
  },
  {
    "code" : "LG_SJR",
    "display" : "Long séjour",
    "definition" : "Soins de Longue Durée - long séjour"
  },
  {
    "code" : "MSN_RTRT",
    "display" : "Maison de retraite",
    "definition" : "Maison de retraite"
  },
  {
    "code" : "PSY",
    "display" : "Psy",
    "definition" : "Psychiatrie"
  },
  {
    "code" : "URG",
    "display" : "Urgence",
    "definition" : "Urgences"
  }]
}

```
