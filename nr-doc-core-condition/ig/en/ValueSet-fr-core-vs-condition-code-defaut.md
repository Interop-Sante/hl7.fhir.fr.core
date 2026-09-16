# FR Core ValueSet Condition Code - Défaut - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Défaut 

 
CIM-10 : terminologie par défaut pour coder les problèmes 

 **References** 

* [FR Core Condition Profile](StructureDefinition-fr-core-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code-defaut",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-defaut",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeDefaut",
  "title" : "FR Core ValueSet Condition Code - Défaut",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T15:45:09+00:00",
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
  "description" : "CIM-10 : terminologie par défaut pour coder les problèmes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
      "version" : "2025-01-01"
    }]
  }
}

```
