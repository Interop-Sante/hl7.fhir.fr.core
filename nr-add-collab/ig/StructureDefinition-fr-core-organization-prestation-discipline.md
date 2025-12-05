# FR Core Organization Prestation Discipline Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Prestation Discipline Extension**

## Extension: FR Core Organization Prestation Discipline Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-prestation-discipline | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreOrganizationPrestationDisciplineExtension |

Prestation de discipline UAC for France

Discipline prestation of the organization

**Context of Use**

**Usage info**

**Utilisations:**

* Ce Extension nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-prestation-discipline)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-prestation-discipline.csv), [Excel](StructureDefinition-fr-core-organization-prestation-discipline.xlsx), [Schematron](StructureDefinition-fr-core-organization-prestation-discipline.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-prestation-discipline",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-prestation-discipline",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationPrestationDisciplineExtension",
  "title" : "FR Core Organization Prestation Discipline Extension",
  "status" : "active",
  "date" : "2025-12-05T08:30:09+00:00",
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
  "description" : "Prestation de discipline UAC for France\n\rDiscipline prestation of the organization",
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
        "short" : "FR Core Organization Prestation Discipline Extension",
        "definition" : "Prestation de discipline UAC for France\n\rDiscipline prestation of the organization"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-prestation-discipline"
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
