# FR Core Organization Analysis Section Extension - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Analysis Section Extension**

## Extension: FR Core Organization Analysis Section Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-analysis-section | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreOrganizationAnalysisSectionExtension |

Section d’analyse d’une UF. An oraganization analysis section

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-analysis-section)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-analysis-section.csv), [Excel](StructureDefinition-fr-core-organization-analysis-section.xlsx), [Schematron](StructureDefinition-fr-core-organization-analysis-section.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-analysis-section",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-analysis-section",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationAnalysisSectionExtension",
  "title" : "FR Core Organization Analysis Section Extension",
  "status" : "active",
  "date" : "2026-01-12T09:57:25+00:00",
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
  "description" : "Section d'analyse d'une UF.\r\nAn oraganization analysis section",
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
        "short" : "FR Core Organization Analysis Section Extension",
        "definition" : "Section d'analyse d'une UF.\r\nAn oraganization analysis section"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-analysis-section"
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
