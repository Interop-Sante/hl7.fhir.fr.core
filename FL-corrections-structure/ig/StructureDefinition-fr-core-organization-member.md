# FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**

## Extension: FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member | *Version*:2.2.0-ballot-2 |
| Active as of 2026-03-11 | *Computable Name*:FRCoreOrganizationMemberExtension |

Extension permettant de définir des membres d’une organisation. Les membres sont des organisations filles de la ressources. C’est la relation inverse de partOf.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* Exemples pour ce/t/te Extension: [Département d'Endocrinologie](Organization-hopitaltest-dept-11003-endocrino.md), [CHRU CENTRE VILLE](Organization-hopitaltest-eg-4-members.md), [Pole Medecines spécialisées](Organization-hopitaltest-pole-1150-med-spe.md) and [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-member)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-member.csv), [Excel](StructureDefinition-fr-core-organization-member.xlsx), [Schematron](StructureDefinition-fr-core-organization-member.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-member",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreOrganizationMemberExtension",
  "title" : "FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation",
  "status" : "active",
  "date" : "2026-03-11T17:39:13+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Extension permettant de définir des membres d'une organisation. Les membres sont des organisations filles de la ressources. C'est la relation inverse de partOf.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation",
      "definition" : "Extension permettant de définir des membres d'une organisation. Les membres sont des organisations filles de la ressources. C'est la relation inverse de partOf."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x]:valueReference",
      "path" : "Extension.value[x]",
      "sliceName" : "valueReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot-2"]
      }]
    }]
  }
}

```
