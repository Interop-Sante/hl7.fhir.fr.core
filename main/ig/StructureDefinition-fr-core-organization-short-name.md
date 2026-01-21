# FR Core Organization Short Name Extension - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Short Name Extension**

## Extension: FR Core Organization Short Name Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name | *Version*:2.2.0-ballot |
| Active as of 2026-01-21 | *Computable Name*:FRCoreOrganizationShortNameExtension |

Libellé court de l’organisation

The Organization short name

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Organization Pole Profile](StructureDefinition-fr-core-organization-pole.md), [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md), [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md) and [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-short-name)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-short-name.csv), [Excel](StructureDefinition-fr-core-organization-short-name.xlsx), [Schematron](StructureDefinition-fr-core-organization-short-name.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-short-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationShortNameExtension",
  "title" : "FR Core Organization Short Name Extension",
  "status" : "active",
  "date" : "2026-01-21T08:47:55+00:00",
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
  "description" : "Libellé court de l'organisation\n\rThe Organization short name",
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
      "expression" : "Organization"
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
        "short" : "FR Core Organization Short Name Extension",
        "definition" : "Libellé court de l'organisation\n\rThe Organization short name"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
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
