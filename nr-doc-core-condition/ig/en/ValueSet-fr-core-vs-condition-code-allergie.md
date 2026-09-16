# FR Core ValueSet Condition Code - Allergie - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Allergie 

 
CIM-11 (Chapitre 04) : réactions allergiques ou d’hypersensibilité, terminologie absente de la CIM-10 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code-allergie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-allergie",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeAllergie",
  "title" : "FR Core ValueSet Condition Code - Allergie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T08:14:25+00:00",
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
  "description" : "CIM-11 (Chapitre 04) : réactions allergiques ou d'hypersensibilité, terminologie absente de la CIM-10",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim11-mms",
      "version" : "2026-02",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "04"
      }]
    }]
  }
}

```
