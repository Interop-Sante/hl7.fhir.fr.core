# FR Core ValueSet Condition Code - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code 

 
Identification de la condition, du problème ou du diagnostic : CIM-10, CIM-11 (Chapitre 04), CISP-2 (ICPC-2), DRC (SFMG) 

 **References** 

* [FR Core Condition Profile](StructureDefinition-fr-core-condition.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCode",
  "title" : "FR Core ValueSet Condition Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-31T14:40:09+00:00",
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
  "description" : "Identification de la condition, du problème ou du diagnostic : CIM-10, CIM-11 (Chapitre 04), CISP-2 (ICPC-2), DRC (SFMG)",
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
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-cim11-mms",
      "version" : "2026-02",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "04"
      }]
    },
    {
      "system" : "http://hl7.org/fhir/sid/icpc-2"
    },
    {
      "system" : "https://www.sfmg.fr"
    }]
  }
}

```
