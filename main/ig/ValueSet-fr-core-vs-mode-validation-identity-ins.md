# FR Core ValueSet Mode validation identity INS - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Mode validation identity INS**

## ValueSet: FR Core ValueSet Mode validation identity INS 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity-ins | *Version*:2.2.0-ballot |
| Active as of 2025-10-22 | *Computable Name*:FRCoreValueSetModeValidationIdentityINS |

 
The validation mode of the identity authorized for INS 

 **References** 

* [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity`](CodeSystem-fr-core-cs-mode-validation-identity.md)version 📦2.2.0-ballot

 

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
  "id" : "fr-core-vs-mode-validation-identity-ins",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity-ins",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetModeValidationIdentityINS",
  "title" : "FR Core ValueSet Mode validation identity INS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-22T14:21:04+00:00",
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
  "description" : "The validation mode of the identity authorized for INS",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity",
        "concept" : [
          {
            "code" : "PA"
          },
          {
            "code" : "CN"
          },
          {
            "code" : "AN"
          },
          {
            "code" : "LE"
          }
        ]
      }
    ]
  }
}

```
