# FR Core ValueSet Availability Schedule - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Availability Schedule**

## ValueSet: FR Core ValueSet Availability Schedule 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-availability-time-rule | *Version*:2.2.0-ballot | |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetAvailabilityTimeRule |

 
Spécifications des périodes récurrentes. Specification of the recurrent periods 

 **References** 

* [FR Core Schedule availability time Extension](StructureDefinition-fr-core-schedule-availability-time.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans `https://www.ietf.org/rfc/rfc2445`version Non précisé (utilise la dernière version provenant du serveur de terminologie)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "fr-core-vs-availability-time-rule",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Availability Time Rule"
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-availability-time-rule",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetAvailabilityTimeRule",
  "title" : "FR Core ValueSet Availability Schedule",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:48:00+00:00",
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
  "description" : "Spécifications des périodes récurrentes.\r\nSpecification of the recurrent periods ",
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
        "system" : "https://www.ietf.org/rfc/rfc2445",
        "concept" : [
          {
            "code" : "SECONDLY",
            "display" : "Par seconde"
          },
          {
            "code" : "MINUTELY",
            "display" : "Par minute"
          },
          {
            "code" : "HOURLY",
            "display" : "Par heure"
          },
          {
            "code" : "DAILY",
            "display" : "Par jour"
          },
          {
            "code" : "WEEKLY",
            "display" : "Par semaine"
          },
          {
            "code" : "MONTHLY",
            "display" : "Par mois"
          },
          {
            "code" : "YEARLY",
            "display" : "Par an"
          }
        ]
      }
    ]
  }
}

```
