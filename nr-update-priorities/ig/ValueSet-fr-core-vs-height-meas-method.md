# Height Length Measurement Method value set - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Height Length Measurement Method value set**

## ValueSet: Height Length Measurement Method value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-meas-method | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreValueSetHeightMeasurementMethod |

 
SELECT SNOMED CT code system values that describe how the height/length was measured. 

 **References** 

* [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md)

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
  "id" : "fr-core-vs-height-meas-method",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-meas-method",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetHeightMeasurementMethod",
  "title" : "Height Length Measurement Method value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-29T10:23:39+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe how the height/length was measured.",
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
          }
        ]
      }
    ]
  }
}

```
