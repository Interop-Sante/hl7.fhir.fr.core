# Heart Rate Measurement Method value set - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Heart Rate Measurement Method value set**

## ValueSet: Heart Rate Measurement Method value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-heartrate-measurement-method | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreValueSetHeartRateMeasurementMethod |

 
SELECT SNOMED CT code system values that describe how the heart rate was measured. 

 **References** 

* [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-heartrate-measurement-method",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-heartrate-measurement-method",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetHeartRateMeasurementMethod",
  "title" : "Heart Rate Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-12T09:16:56+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "SELECT SNOMED CT code system values that describe how the heart rate was measured.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
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
          }
        ]
      }
    ]
  }
}

```
