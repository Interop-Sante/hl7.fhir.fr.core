# FR Core Organization UF Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization UF Profile**

## Resource Profile: FR Core Organization UF Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreOrganizationUFProfile |

 
This profile specializes the fr-core-organization profile to represent wards inside healthcare institutions. 
Ce profil spécialise le profil fr-core-organization pour représenter les unités fonctionnelles en établissement 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uf)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-uf.csv), [Excel](StructureDefinition-fr-core-organization-uf.xlsx), [Schematron](StructureDefinition-fr-core-organization-uf.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uf",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationUFProfile",
  "title" : "FR Core Organization UF Profile",
  "status" : "active",
  "date" : "2026-01-12T08:53:05+00:00",
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
  "description" : "This profile specializes the fr-core-organization profile to represent wards inside healthcare institutions.\r\n\nCe profil spécialise le profil fr-core-organization pour représenter les unités fonctionnelles en établissement",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.meta.profile",
        "path" : "Organization.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.meta.profile:fr-canonical",
        "path" : "Organization.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf|2.2.0-ballot"
      },
      {
        "id" : "Organization.extension",
        "path" : "Organization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.extension:shortName",
        "path" : "Organization.extension",
        "sliceName" : "shortName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:description",
        "path" : "Organization.extension",
        "sliceName" : "description",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:budgetLetter",
        "path" : "Organization.extension",
        "sliceName" : "budgetLetter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-budget-letter|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:equipmentField",
        "path" : "Organization.extension",
        "sliceName" : "equipmentField",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-field|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:activityField",
        "path" : "Organization.extension",
        "sliceName" : "activityField",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-activity-field|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:external",
        "path" : "Organization.extension",
        "sliceName" : "external",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-external|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:accomodationSpace",
        "path" : "Organization.extension",
        "sliceName" : "accomodationSpace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-number-of-theorical-accomadation-space|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:applicantAct",
        "path" : "Organization.extension",
        "sliceName" : "applicantAct",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-applicant-act|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:executantAct",
        "path" : "Organization.extension",
        "sliceName" : "executantAct",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executant|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:analysisSection",
        "path" : "Organization.extension",
        "sliceName" : "analysisSection",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-analysis-section|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:activityType",
        "path" : "Organization.extension",
        "sliceName" : "activityType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-activity-type|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:usePeriod",
        "path" : "Organization.extension",
        "sliceName" : "usePeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Organization.identifier.use",
        "path" : "Organization.identifier.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        }
      },
      {
        "id" : "Organization.identifier.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Organization.identifier.system",
        "path" : "Organization.identifier.system",
        "min" : 1
      },
      {
        "id" : "Organization.identifier.value",
        "path" : "Organization.identifier.value",
        "min" : 1
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      }
    ]
  }
}

```
