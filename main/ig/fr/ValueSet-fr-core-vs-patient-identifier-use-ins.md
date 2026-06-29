# FR Core ValueSet Patient identifier use INS - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Patient identifier use INS 

 
Use autorisés pour l’identifiant national de santé. Authorized use for INS identifier. 

 **References** 

* [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-identifier-use-ins",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-ins",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPatientIdentifierUseINS",
  "title" : "FR Core ValueSet Patient identifier use INS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:30:52+00:00",
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
  "description" : "Use autorisés pour l'identifiant national de santé.\r\nAuthorized use for INS identifier.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/identifier-use",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "official"
      },
      {
        "code" : "old"
      }]
    }]
  }
}

```
