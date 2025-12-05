# FR Core ValueSet Unavailability Reason - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Unavailability Reason**

## ValueSet: FR Core ValueSet Unavailability Reason 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-schedule-unavailability-reason | *Version*:2.2.0-ballot | |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetUnavailabilityReason |

 
Raison d’indisponibilité 

 **References** 

* [FR Core Schedule availability time Extension](StructureDefinition-fr-core-schedule-availability-time.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type`](CodeSystem-fr-core-cs-schedule-type.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem Schedule Type v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-schedule-type.md)

Ce jeu de valeur (ValueSet) contient 1 concepts

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
  "id" : "fr-core-vs-schedule-unavailability-reason",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Unavailability-reason"
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-schedule-unavailability-reason",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetUnavailabilityReason",
  "title" : "FR Core ValueSet Unavailability Reason",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T17:11:23+00:00",
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
  "description" : "Raison d'indisponibilité",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type",
        "concept" : [
          {
            "code" : "busy-unavailable",
            "display" : "Indisponibilité"
          }
        ]
      }
    ]
  }
}

```
