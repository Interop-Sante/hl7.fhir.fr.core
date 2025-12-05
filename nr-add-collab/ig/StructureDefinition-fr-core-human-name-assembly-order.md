# FR Core Assembly Order Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Assembly Order Extension**

## Extension: FR Core Assembly Order Extension 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name-assembly-order | *Version*:2.2.0-ballot | |
| Active as of 2025-12-05 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreAssemblyOrderExtension |

A code that represents the preferred display order of the components of this human name.

**Context of Use**

**Usage info**

**Utilisations:**

* Ce Extension nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-human-name-assembly-order)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-human-name-assembly-order.csv), [Excel](StructureDefinition-fr-core-human-name-assembly-order.xlsx), [Schematron](StructureDefinition-fr-core-human-name-assembly-order.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-human-name-assembly-order",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fhir"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name-assembly-order",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreAssemblyOrderExtension",
  "title" : "FR Core Assembly Order Extension",
  "status" : "active",
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
  "description" : "A code that represents the preferred display order of the components of this human name.",
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
      "expression" : "HumanName"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Preferred display order of name parts",
        "definition" : "A code that represents the preferred display order of the components of this human name."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name-assembly-order"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "A code that represents the preferred display order of the components of a human name.",
          "valueSet" : "http://hl7.org/fhir/ValueSet/name-assembly-order|4.0.1"
        }
      }
    ]
  }
}

```
