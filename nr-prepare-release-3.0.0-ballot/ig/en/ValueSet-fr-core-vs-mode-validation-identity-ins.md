# FR Core ValueSet Mode validation identity INS - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: FR Core ValueSet Mode validation identity INS 

 **References** 

* [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetModeValidationIdentityINS",
  "title" : "FR Core ValueSet Mode validation identity INS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-08T19:08:49+00:00",
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
      "version" : "3.0.0-ballot",
      "concept" : [{
        "code" : "CN"
      },
      {
        "code" : "PA"
      },
      {
        "code" : "CS"
      },
      {
        "code" : "eCN"
      },
      {
        "code" : "IN"
      },
      {
        "code" : "AV"
      },
      {
        "code" : "LECV"
      },
      {
        "code" : "AN"
      },
      {
        "code" : "LE"
      },
      {
        "code" : "CC"
      },
      {
        "code" : "CIMS"
      },
      {
        "code" : "ANCV"
      }]
    }]
  }
}

```
