# FR Core ValueSet INSEE code - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet INSEE code**

## ValueSet: FR Core ValueSet INSEE code 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-insee-code | *Version*:2.2.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:FRCoreValueSetINSEECode |

 
the French Address Insee Codes 

 **References** 

* [FR Core Address Insee Code Extension](StructureDefinition-fr-core-address-insee-code.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSetversion: null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R13-CommuneOM.html)version Not Stated (use latest from terminology server)

 

### Expansion

Expansion from smt.esante.gouv.fr based on [codesystem TRE_R13_CommuneOM v20240628120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R13-CommuneOM.html)

Ce jeu de valeurs (ValueSet) a 39,293 codes. Pour garder la publication gérable, seulement une selection (1,000 codes) de lensemble des codes est affiché.

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
  "id" : "fr-core-vs-insee-code",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-insee-code",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetINSEECode",
  "title" : "FR Core ValueSet INSEE code",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-18T17:20:39+00:00",
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
  "description" : "the French Address Insee Codes",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM"
      }
    ]
  }
}

```
