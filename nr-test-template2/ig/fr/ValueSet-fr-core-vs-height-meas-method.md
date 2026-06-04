# Height Length Measurement Method value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Height Length Measurement Method value set 

 
SELECT SNOMED CT code system values that describe how the height/length was measured. 

 **References** 

* [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-height-meas-method",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-meas-method",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetHeightMeasurementMethod",
  "title" : "Height Length Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-04T15:45:54+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how the height/length was measured.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "414135002",
        "display" : "Estimated (qualifier value)"
      },
      {
        "code" : "258104002",
        "display" : "Measured (qualifier value)"
      },
      {
        "code" : "733985002",
        "display" : "Reported (qualifier value)"
      }]
    }]
  }
}

```
