# Heart Rate Measurement Method value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Heart Rate Measurement Method value set 

 
SELECT SNOMED CT code system values that describe how the heart rate was measured. 

 **References** 

* [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-heartrate-measurement-method",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-heartrate-measurement-method",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetHeartRateMeasurementMethod",
  "title" : "Heart Rate Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how the heart rate was measured.",
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
        "code" : "268447006",
        "display" : "Doppler studies (procedure)"
      },
      {
        "code" : "29303009",
        "display" : "Electrocardiographic procedure (procedure)"
      },
      {
        "code" : "13385008",
        "display" : "Mediate auscultation (procedure)"
      },
      {
        "code" : "264598005",
        "display" : "Oximetry (procedure)"
      },
      {
        "code" : "113011001",
        "display" : "Palpation (procedure)"
      },
      {
        "code" : "277917001",
        "display" : "Thoracic impedance cardiography (procedure)"
      },
      {
        "code" : "239516002",
        "display" : "Monitoring procedure (regime/therapy)"
      }]
    }]
  }
}

```
