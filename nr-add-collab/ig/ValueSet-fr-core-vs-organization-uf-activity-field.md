# FR Core ValueSet Organization UF activity field - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Organization UF activity field**

## ValueSet: FR Core ValueSet Organization UF activity field 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-uf-activity-field | *Version*:2.2.0-ballot | |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetOrganizationUFActivityField |

 
Champ d’activité des structures UF. Organization UF activity field 

 **References** 

Ce jeu de valeurs nest pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3311`](CodeSystem-fr-core-cs-v2-3311.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem v2-3311 v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-v2-3311.md)

Ce jeu de valeur (ValueSet) contient 8 concepts

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
  "id" : "fr-core-vs-organization-uf-activity-field",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-uf-activity-field",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetOrganizationUFActivityField",
  "title" : "FR Core ValueSet Organization UF activity field",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T09:13:38+00:00",
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
  "description" : "Champ d'activité des structures UF.\r\nOrganization UF activity field",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3311",
        "concept" : [
          {
            "code" : "MCO",
            "display" : "MCO"
          },
          {
            "code" : "SSR",
            "display" : "SSR"
          },
          {
            "code" : "HD",
            "display" : "HAD"
          },
          {
            "code" : "EHPD",
            "display" : "EHPAD"
          },
          {
            "code" : "LG_SJR",
            "display" : "Long séjour"
          },
          {
            "code" : "MSN_RTRT",
            "display" : "Maison de retraite"
          },
          {
            "code" : "PSY",
            "display" : "Psy"
          },
          {
            "code" : "URG",
            "display" : "Urgence"
          }
        ]
      }
    ]
  }
}

```
