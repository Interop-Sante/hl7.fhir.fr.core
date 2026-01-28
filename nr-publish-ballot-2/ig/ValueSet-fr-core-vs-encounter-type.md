# FR Core ValueSet Encounter type - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Encounter type**

## ValueSet: FR Core ValueSet Encounter type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type | *Version*:2.2.0-ballot-2 | |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetEncounterType |

 
Jeu de valeurs des types de rencontre. A coded type for an encounter 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)

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
  "id" : "fr-core-vs-encounter-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fhir"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreValueSetEncounterType",
  "title" : "FR Core ValueSet Encounter type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T08:22:20+00:00",
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
  "description" : "Jeu de valeurs des types de rencontre.\r\nA coded type for an encounter",
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
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0007",
        "concept" : [
          {
            "code" : "C",
            "display" : "Elective/Confort|Confort"
          },
          {
            "code" : "L",
            "display" : "Labor and delivery|Accouchement maternité"
          },
          {
            "code" : "N",
            "display" : "Newborn (Birth in healthcare facility)|Nouveau né"
          },
          {
            "code" : "R",
            "display" : "Routine|Séance"
          },
          {
            "code" : "U",
            "display" : "Emergency|Caractère d’urgence aigue du problème quel que soit le service d’entrée"
          }
        ]
      },
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-admission",
        "concept" : [
          {
            "code" : "RM",
            "display" : "Rétrocession de médicament"
          },
          {
            "code" : "IE",
            "display" : "Prestation inter-établissements"
          }
        ]
      }
    ]
  }
}

```
