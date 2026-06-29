# FR Core CodeSystem Fiabilité Identité - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Fiabilité Identité 

 
French Identity reliabilty codes 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* Cette terminologie de référence (CodeSystem) n'est pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-fiabilite-identite",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-fiabilite-identite",
  "identifier" : [{
    "system" : "http://terminology.hl7.org/CodeSystem/v2-tables",
    "value" : "urn:oid:2.16.840.1.113883.12.445"
  }],
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemReliabilityIdentity",
  "title" : "FR Core CodeSystem Fiabilité Identité",
  "status" : "active",
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
  "description" : "French Identity reliabilty codes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 21,
  "concept" : [{
    "code" : "VIDE",
    "display" : "Identité non encore qualifiée",
    "definition" : "Identité non encore qualifiée"
  },
  {
    "code" : "PROV",
    "display" : "Identité provisoire",
    "definition" : "Identité provisoire"
  },
  {
    "code" : "VALI",
    "display" : "Identité validée",
    "definition" : "Identité validée"
  },
  {
    "code" : "DOUB",
    "display" : "Doublon",
    "definition" : "Doublon"
  },
  {
    "code" : "DESA",
    "display" : "Identité désactivée",
    "definition" : "Identité désactivée"
  },
  {
    "code" : "DPOT",
    "display" : "Doublon potentiel",
    "definition" : "Doublon potentiel"
  },
  {
    "code" : "DOUA",
    "display" : "Doublon avéré",
    "definition" : "Doublon avéré"
  },
  {
    "code" : "COLP",
    "display" : "Collision potentielle",
    "definition" : "Collision potentielle"
  },
  {
    "code" : "COLV",
    "display" : "Collision avérée",
    "definition" : "Collision avérée"
  },
  {
    "code" : "FILI",
    "display" : "Filiation",
    "definition" : "Filiation"
  },
  {
    "code" : "CACH",
    "display" : "Identité cachée",
    "definition" : "Identité cachée"
  },
  {
    "code" : "ANOM",
    "display" : "Anonyme",
    "definition" : "Anonyme"
  },
  {
    "code" : "IDVER",
    "display" : "Identité vérifiée par le patient",
    "definition" : "Identité vérifiée par le patient"
  },
  {
    "code" : "RECD",
    "display" : "Identité reçue d'un autre domaine",
    "definition" : "Identité reçue d'un autre domaine"
  },
  {
    "code" : "IDRA",
    "display" : "Identité rapprochée dans un autre domaine",
    "definition" : "Identité rapprochée dans un autre domaine"
  },
  {
    "code" : "USUR",
    "display" : "Identité usurpée",
    "definition" : "Identité usurpée"
  },
  {
    "code" : "HOMD",
    "display" : "Homonyme détecté",
    "definition" : "Homonyme détecté"
  },
  {
    "code" : "INVA",
    "display" : "Identité invalidée",
    "definition" : "Identité invalidée"
  },
  {
    "code" : "HOMA",
    "display" : "Homonyme avéré (attribut d'identité homonyme)",
    "definition" : "Homonyme avéré (attribut d'identité homonyme)"
  },
  {
    "code" : "FICT",
    "display" : "Identité fictive (attribut d'identité fictive)",
    "definition" : "Identité fictive (attribut d'identité fictive)"
  },
  {
    "code" : "DOUT",
    "display" : "Identité douteuse (attribut d'identité douteuse)",
    "definition" : "Identité douteuse (attribut d'identité douteuse)"
  }]
}

```
