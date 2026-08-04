# FR Core ValueSet Identity reliability - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Identity reliability 

 
Les 4 statuts de confiance de l’identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres. 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-identity-reliability",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityReliability",
  "title" : "FR Core ValueSet Identity reliability",
  "status" : "active",
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
  "description" : "Les 4 statuts de confiance de l'identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-reliability",
      "version" : "2.2.0"
    }]
  }
}

```
