# FR Core ValueSet Mode validation identity INS - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Mode validation identity INS 

 
The validation mode of the identity authorized for INS 

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
  "id" : "fr-core-vs-mode-validation-identity-ins",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity-ins",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetModeValidationIdentityINS",
  "title" : "FR Core ValueSet Mode validation identity INS",
  "status" : "active",
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
  "description" : "The validation mode of the identity authorized for INS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "PA"
      },
      {
        "code" : "CN"
      },
      {
        "code" : "AN"
      },
      {
        "code" : "LE"
      }]
    }]
  }
}

```
