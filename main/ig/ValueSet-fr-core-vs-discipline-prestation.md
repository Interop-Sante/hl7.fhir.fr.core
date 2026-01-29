# FR Core ValueSet Organization Discipline de prestation - nomenclature SAE - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Organization Discipline de prestation - nomenclature SAE**

## ValueSet: FR Core ValueSet Organization Discipline de prestation - nomenclature SAE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-discipline-prestation | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-29 | *Computable Name*:FRCoreValueSetDisciplinePrestation |

 
Valeurs permettant de coder les disciplines de prestation. 

 **References** 

* [FR Core Organization Extension - Discipline Prestation](StructureDefinition-fr-core-organization-discipline-prestation.md)

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
  "id" : "fr-core-vs-discipline-prestation",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-discipline-prestation",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreValueSetDisciplinePrestation",
  "title" : "FR Core ValueSet Organization Discipline de prestation - nomenclature SAE",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-29T08:41:18+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
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
  "description" : "Valeurs permettant de coder les disciplines de prestation.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
          "display" : "France"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation"
      }
    ]
  }
}

```
