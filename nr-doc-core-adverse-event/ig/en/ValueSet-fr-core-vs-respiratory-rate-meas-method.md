# Respiratory Rate Measurement Method value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Respiratory Rate Measurement Method value set 

 
SELECT SNOMED CT code system values that describe how the respiratory rate was measured. 

 **References** 

* [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-respiratory-rate-meas-method",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-respiratory-rate-meas-method",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetRespiratoryRateMeasurementMethod",
  "title" : "Respiratory Rate Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:41:53+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how the respiratory rate was measured.",
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
        "code" : "37931006",
        "display" : "Auscultation (procedure)"
      },
      {
        "code" : "32750006",
        "display" : "Inspection (procedure)"
      },
      {
        "code" : "239516002",
        "display" : "Monitoring procedure (regime/therapy)"
      }]
    }]
  }
}

```
