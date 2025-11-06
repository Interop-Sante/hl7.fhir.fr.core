# FR Core Comment Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Comment Extension**

## Extension: FR Core Comment Extension 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment | *Version*:2.2.0-ballot | |
| Active as of 2025-11-06 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreCommentExtension |

Ajout d’un commentaire sur un dataElement d’une ressource. Add a comment on a dataElement of a resource

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-comment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-comment.csv), [Excel](StructureDefinition-fr-core-comment.xlsx), [Schematron](StructureDefinition-fr-core-comment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-comment",
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
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCommentExtension",
  "title" : "FR Core Comment Extension",
  "status" : "active",
  "date" : "2025-11-06T10:11:54+00:00",
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
  "description" : "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource",
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
      "expression" : "Patient.contact"
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
        "short" : "Comment on element Patient.contact | Commentaire sur l'élément Patient.contact",
        "definition" : "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment"
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
