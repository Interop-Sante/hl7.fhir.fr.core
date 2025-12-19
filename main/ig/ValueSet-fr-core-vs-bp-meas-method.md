# Blood Pressure Measurement Method value set - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure Measurement Method value set**

## ValueSet: Blood Pressure Measurement Method value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-method | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:FRCoreValueSetBloodPressureMeasurementMethod |

 
SELECT SNOMED CT code system values that describe how a blood pressure was measured. 

 **References** 

* [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md)

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
  "id" : "fr-core-vs-bp-meas-method",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-method",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetBloodPressureMeasurementMethod",
  "title" : "Blood Pressure Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-19T17:17:04+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how a blood pressure was measured.",
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
          }
        ]
      }
    ]
  }
}

```
