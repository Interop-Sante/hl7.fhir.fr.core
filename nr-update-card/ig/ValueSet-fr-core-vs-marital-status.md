# FR Core ValueSet Marital Status ValueSet - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Marital Status ValueSet**

## ValueSet: FR Core ValueSet Marital Status ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-marital-status | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreValueSetMaritalStatus |

 
Patient Marital Status 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

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
  "id" : "fr-core-vs-marital-status",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-marital-status",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetMaritalStatus",
  "title" : "FR Core ValueSet Marital Status ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-12T08:44:59+00:00",
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
  "description" : "Patient Marital Status",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-marital-status"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
        "concept" : [
          {
            "code" : "UNK",
            "display" : "unknown"
          }
        ]
      }
    ]
  }
}

```
