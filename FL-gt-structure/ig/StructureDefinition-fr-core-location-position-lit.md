# FR Core Location Extension - Position du lit - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Location Extension - Position du lit**

## Extension: FR Core Location Extension - Position du lit 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit | *Version*:2.2.0-ballot |
| Active as of 2025-11-02 | *Computable Name*:FRCoreLocationPositionLitExtension |

Position du lit dans la chambre

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-location-position-lit)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-location-position-lit.csv), [Excel](StructureDefinition-fr-core-location-position-lit.xlsx), [Schematron](StructureDefinition-fr-core-location-position-lit.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-location-position-lit",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreLocationPositionLitExtension",
  "title" : "FR Core Location Extension - Position du lit",
  "status" : "active",
  "date" : "2025-11-02T22:07:39+00:00",
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
  "description" : "Position du lit dans la chambre",
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
      "expression" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location#Location"
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
        "short" : "FR Core Location Extension - Position du lit",
        "definition" : "Position du lit dans la chambre"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-position-lit"
        }
      }
    ]
  }
}

```
