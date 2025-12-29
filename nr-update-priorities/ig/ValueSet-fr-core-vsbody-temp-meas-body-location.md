# Body Temperature Measurement Body Location value set - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Temperature Measurement Body Location value set**

## ValueSet: Body Temperature Measurement Body Location value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vsbody-temp-meas-body-location | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreValueSetBodyTemperatureMeasurementBodyLocation |

 
SELECT SNOMED CT code system values that describe where on the body the temperature was measured. 

 **References** 

* [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md)

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
  "id" : "fr-core-vsbody-temp-meas-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vsbody-temp-meas-body-location",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetBodyTemperatureMeasurementBodyLocation",
  "title" : "Body Temperature Measurement Body Location value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-29T08:24:40+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe where on the body the temperature was measured.",
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
            "code" : "117590005",
            "display" : "Ear structure (body structure)"
          },
          {
            "code" : "7569003",
            "display" : "Finger structure (body structure)"
          },
          {
            "code" : "52795006",
            "display" : "Forehead structure (body structure)"
          },
          {
            "code" : "279549004",
            "display" : "Nasal cavity structure (body structure)"
          },
          {
            "code" : "71836000",
            "display" : "Nasopharyngeal structure (body structure)"
          },
          {
            "code" : "74262004",
            "display" : "Oral cavity structure (body structure)"
          },
          {
            "code" : "34402009",
            "display" : "Rectum structure (body structure)"
          },
          {
            "code" : "422543003",
            "display" : "Structure of axillary fossa (body structure)"
          },
          {
            "code" : "29707007",
            "display" : "Toe structure (body structure)"
          },
          {
            "code" : "42859004",
            "display" : "Tympanic membrane structure (body structure)"
          },
          {
            "code" : "89837001",
            "display" : "Urinary bladder structure (body structure)"
          }
        ]
      }
    ]
  }
}

```
