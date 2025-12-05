# Oxygen Saturation Body Location value set - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oxygen Saturation Body Location value set**

## ValueSet: Oxygen Saturation Body Location value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetSPO2BodyLocation |

 
Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed. 

 **References** 

* [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md)
* [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://snomed.info/sct`](http://www.snomed.org/)version Non précisé (utilise la dernière version provenant du serveur de terminologie)

 

### Expansion

Expansion de smt.esante.gouv.fr basée sur SNOMED CT édition 11000315107 21-Jun 2025

Ce jeu de valeur (ValueSet) contient 4 concepts

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
  "id" : "fr-core-vs-spo2-body-location",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetSPO2BodyLocation",
  "title" : "Oxygen Saturation Body Location value set",
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
  "description" : "Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed.",
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
            "code" : "48800003",
            "display" : "Ear lobule structure (body structure)"
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
            "code" : "29707007",
            "display" : "Toe structure (body structure)"
          }
        ]
      }
    ]
  }
}

```
