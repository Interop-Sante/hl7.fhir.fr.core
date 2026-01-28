# FR Core ValueSet Organization Etablisement type - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Organization Etablisement type**

## ValueSet: FR Core ValueSet Organization Etablisement type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-etablissement-type | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-28 | *Computable Name*:FRCoreValueSetOrganizationEtablissementType |

 
Types d’organisation représentant des établissements. 

 **References** 

* [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

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
  "id" : "fr-core-vs-organization-etablissement-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-etablissement-type",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreValueSetOrganizationEtablissementType",
  "title" : "FR Core ValueSet Organization Etablisement type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T13:01:34+00:00",
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
  "description" : "Types d'organisation représentant des établissements.",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
        "concept" : [
          {
            "code" : "LEGAL-ENTITY",
            "display" : "Entité légale"
          },
          {
            "code" : "GEOGRAPHICAL-ENTITY",
            "display" : "Entité géographique"
          }
        ]
      }
    ]
  }
}

```
