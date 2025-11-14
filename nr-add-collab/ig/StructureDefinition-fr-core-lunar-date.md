# FR Core Lunar Date Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Lunar Date Extension**

## Extension: FR Core Lunar Date Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date | *Version*:2.2.0-ballot |
| Active as of 2025-11-14 | *Computable Name*:FRCoreLunarDateExtension |

Date de naissance approximative du patient. Approximate birthdate of the patient

| | |
| :--- | :--- |
| Indicate an approximate birthdate | Permet de spécifier une date approximative de naissance du patient |

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-lunar-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-lunar-date.csv), [Excel](StructureDefinition-fr-core-lunar-date.xlsx), [Schematron](StructureDefinition-fr-core-lunar-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-lunar-date",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreLunarDateExtension",
  "title" : "FR Core Lunar Date Extension",
  "status" : "active",
  "date" : "2025-11-14T07:30:49+00:00",
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
  "description" : "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient",
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
  "purpose" : "Indicate an approximate birthdate | Permet de spécifier une date approximative de naissance du patient",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Approximative birthdate | Date de naissance approximative",
        "definition" : "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
