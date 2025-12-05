# FR Core ValueSet Organization identifier type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Organization identifier type**

## ValueSet: FR Core ValueSet Organization identifier type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetOrganizationIdentifierType |

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations). 

 **References** 

* [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* [FR Core Organization Pole Profile](StructureDefinition-fr-core-organization-pole.md)
* [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)
* [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203`](CodeSystem-fr-core-cs-v2-0203.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem v2-0203 v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-v2-0203.md)

Ce jeu de valeur (ValueSet) contient 7 concepts

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
  "id" : "fr-core-vs-organization-identifier-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetOrganizationIdentifierType",
  "title" : "FR Core ValueSet Organization identifier type",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:27:25+00:00",
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
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations).",
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
  "immutable" : true,
  "compose" : {
    "include" : [
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "concept" : [
          {
            "code" : "FINEJ",
            "display" : "FINESS d'entité juridique"
          },
          {
            "code" : "FINEG",
            "display" : "FINESS d'entité géographique"
          },
          {
            "code" : "SIREN",
            "display" : "Identification de l'organisation au SIREN"
          },
          {
            "code" : "SIRET",
            "display" : "Identification de l'organisation au SIRET"
          },
          {
            "code" : "IDNST",
            "display" : "Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS"
          },
          {
            "code" : "INTRN",
            "display" : "Identifiant interne"
          },
          {
            "code" : "EXTRN",
            "display" : "Identifiant externe"
          }
        ]
      }
    ]
  }
}

```
