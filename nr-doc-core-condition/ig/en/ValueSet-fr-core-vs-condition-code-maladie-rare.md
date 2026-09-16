# FR Core ValueSet Condition Code - Maladie rare - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Maladie rare 

 
ORPHAcode (Orphanet) : codage des maladies rares 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code-maladie-rare",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-maladie-rare",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeMaladieRare",
  "title" : "FR Core ValueSet Condition Code - Maladie rare",
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
  "description" : "ORPHAcode (Orphanet) : codage des maladies rares",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.orpha.net"
    }]
  }
}

```
