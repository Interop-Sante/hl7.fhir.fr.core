# FR Core ValueSet Patient gender - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Patient gender**

## ValueSet: FR Core ValueSet Patient gender 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetPatientGender |

 
Genres autorisés dans le cadre du genre administratif du Patient en France. Pour partager des genres suplémentaires (ex. biologique), cf gender harmony implementation guide. Permitted genders for French Patient gender. 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://hl7.org/fhir/administrative-gender`](http://hl7.org/fhir/R4/codesystem-administrative-gender.html)version 📦4.0.1

 

### Expansion

Expansion effectuée en interne basée sur [codesystem AdministrativeGender v4.0.1 (CodeSystem)](http://hl7.org/fhir/R4/codesystem-administrative-gender.html)

Ce jeu de valeur (ValueSet) contient 3 concepts

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
  "id" : "fr-core-vs-patient-gender",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPatientGender",
  "title" : "FR Core ValueSet Patient gender",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T09:27:14+00:00",
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
  "description" : "Genres autorisés dans le cadre du genre administratif du Patient en France. Pour partager des genres suplémentaires (ex. biologique), cf gender harmony implementation guide.\r\nPermitted genders for French Patient gender.",
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
        "system" : "http://hl7.org/fhir/administrative-gender",
        "concept" : [
          {
            "code" : "male"
          },
          {
            "code" : "female"
          },
          {
            "code" : "unknown"
          }
        ]
      }
    ]
  }
}

```
