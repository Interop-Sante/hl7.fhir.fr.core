# FR Core ValueSet Location physical type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Location physical type**

## ValueSet: FR Core ValueSet Location physical type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-physical-type | *Version*:2.2.0-ballot | |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetLocationPhysicalType |

 
Types de lieux physiques pour la France. French location physical type 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* [FR Core Location Profile](StructureDefinition-fr-core-location.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type`](CodeSystem-fr-core-cs-location-physical-type.md)version 📦2.2.0-ballot

 

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
  "id" : "fr-core-vs-location-physical-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-physical-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetLocationPhysicalType",
  "title" : "FR Core ValueSet Location physical type",
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
  "description" : "Types de lieux physiques pour la France.\r\nFrench location physical type",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type",
        "concept" : [
          {
            "code" : "FTL",
            "display" : "Emplacement fauteuil"
          },
          {
            "code" : "BTMNT",
            "display" : "Bâtiment"
          },
          {
            "code" : "L",
            "display" : "Lieu non spécifié"
          },
          {
            "code" : "ETG",
            "display" : "Etage"
          },
          {
            "code" : "AL",
            "display" : "Aile"
          },
          {
            "code" : "CLR",
            "display" : "Couloir"
          },
          {
            "code" : "R",
            "display" : "Chambre"
          },
          {
            "code" : "BX",
            "display" : "Box"
          },
          {
            "code" : "PT",
            "display" : "Point"
          },
          {
            "code" : "B",
            "display" : "Emplacement lit"
          },
          {
            "code" : "BLC",
            "display" : "Bloc"
          },
          {
            "code" : "BR",
            "display" : "Bureau"
          }
        ]
      }
    ]
  }
}

```
