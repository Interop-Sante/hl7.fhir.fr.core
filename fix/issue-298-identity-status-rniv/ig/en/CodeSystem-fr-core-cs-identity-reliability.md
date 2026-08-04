# FR Core CodeSystem Fiabilité Identité - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Fiabilité Identité 

 
CodeSystem permettant d’indiquer la fiabilité d’une identité. 

This Code system is referenced in the definition of the following value sets:

* [FRCoreValueSetIdentityReliability](ValueSet-fr-core-vs-identity-reliability.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-identity-reliability",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-reliability",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemIdentityReliability",
  "title" : "FR Core CodeSystem Fiabilité Identité",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-04T15:42:07+00:00",
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
  "description" : "CodeSystem permettant d'indiquer la fiabilité d'une identité.",
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
    "code" : "RECUP",
    "display" : "Identité récupérée",
    "definition" : "Identité récupérée"
  },
  {
    "code" : "QUAL",
    "display" : "Identité qualifiée",
    "definition" : "Identité qualifiée"
  }]
}

```
