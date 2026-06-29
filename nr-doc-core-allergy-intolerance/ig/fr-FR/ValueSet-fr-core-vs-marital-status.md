# FR Core ValueSet Marital Status ValueSet - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Marital Status ValueSet 

 
Patient Marital Status 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-marital-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-marital-status",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetMaritalStatus",
  "title" : "FR Core ValueSet Marital Status ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:28:38+00:00",
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
  "description" : "Patient Marital Status",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-marital-status",
      "version" : "2.2.0"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "version" : "4.0.0"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
      "version" : "4.0.0",
      "concept" : [{
        "code" : "UNK",
        "display" : "unknown"
      }]
    }]
  }
}

```
