# FR Core ValueSet Patient identifier use INS - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Patient identifier use INS**

## ValueSet: FR Core ValueSet Patient identifier use INS 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-ins | *Version*:2.2.0-ballot |
| Active as of 2025-12-17 | *Computable Name*:FRCoreValueSetPatientIdentifierUseINS |

 
Use autorisés pour l’identifiant national de santé. Authorized use for INS identifier. 

 **References** 

* [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

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
  "id" : "fr-core-vs-patient-identifier-use-ins",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-ins",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPatientIdentifierUseINS",
  "title" : "FR Core ValueSet Patient identifier use INS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-17T15:20:57+00:00",
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
  "description" : "Use autorisés pour l'identifiant national de santé.\r\nAuthorized use for INS identifier.",
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
        "system" : "http://hl7.org/fhir/identifier-use",
        "concept" : [
          {
            "code" : "official"
          },
          {
            "code" : "old"
          }
        ]
      }
    ]
  }
}

```
