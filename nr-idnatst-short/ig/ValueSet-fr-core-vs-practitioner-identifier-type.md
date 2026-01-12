# FR Core ValueSet Practitioner identifier type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Practitioner identifier type**

## ValueSet: FR Core ValueSet Practitioner identifier type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-identifier-type | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreValueSetPractitionerIdentifierType |

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification) 

 **References** 

* [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md)

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
  "id" : "fr-core-vs-practitioner-identifier-type",
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPractitionerIdentifierType",
  "title" : "FR Core ValueSet Practitioner identifier type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-12T09:16:56+00:00",
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
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification)",
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
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "concept" : [
          {
            "code" : "EI",
            "display" : "Identifiant d'employé"
          }
        ]
      },
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "concept" : [
          {
            "code" : "ADELI",
            "display" : "N° ADELI"
          },
          {
            "code" : "RPPS",
            "display" : "N° RPPS"
          },
          {
            "code" : "IDNPS",
            "display" : "Identifiant National de Professionnel de Santé"
          },
          {
            "code" : "INTRN",
            "display" : "Identifiant interne"
          }
        ]
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne",
        "concept" : [
          {
            "code" : "1",
            "display" : "Id cabinet ADELI/n° registre"
          },
          {
            "code" : "3",
            "display" : "FINESS/n° de registre"
          },
          {
            "code" : "4",
            "display" : "SIREN/n° de registre"
          },
          {
            "code" : "5",
            "display" : "SIRET/n° de registre"
          },
          {
            "code" : "6",
            "display" : "Id cabinet RPPS/n° de registre"
          }
        ]
      }
    ]
  }
}

```
