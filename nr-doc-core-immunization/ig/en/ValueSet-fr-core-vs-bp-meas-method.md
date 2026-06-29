# Blood Pressure Measurement Method value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Blood Pressure Measurement Method value set 

 
SELECT SNOMED CT code system values that describe how a blood pressure was measured. 

 **References** 

* [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-bp-meas-method",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-method",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBloodPressureMeasurementMethod",
  "title" : "Blood Pressure Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how a blood pressure was measured.",
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
        "code" : "77938009",
        "display" : "Arterial pressure monitoring, invasive method (regime/therapy)"
      },
      {
        "code" : "17146006",
        "display" : "Arterial pressure monitoring, non-invasive method (regime/therapy)"
      },
      {
        "code" : "37931006",
        "display" : "Auscultation (procedure)"
      },
      {
        "code" : "765172009",
        "display" : "Doppler ultrasound (procedure)"
      },
      {
        "code" : "13385008",
        "display" : "Mediate auscultation (procedure)"
      },
      {
        "code" : "113011001",
        "display" : "Palpation (procedure)"
      },
      {
        "code" : "31813000",
        "display" : "Vascular oscillometry (procedure)"
      }]
    }]
  }
}

```
