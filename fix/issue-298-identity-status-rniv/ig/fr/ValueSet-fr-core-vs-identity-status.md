# FR Core ValueSet Identity Status - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Identity Status 

 
Les 4 statuts de confiance de l’identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres. 

 **References** 

* [FR Core Patient Identity Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-identity-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-status",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityStatus",
  "title" : "FR Core ValueSet Identity Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-10T13:45:29+00:00",
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
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status",
      "version" : "2.2.0"
    }]
  }
}

```
