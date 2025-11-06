# FR Core Organization UAC Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization UAC Profile**

## Resource Profile: FR Core Organization UAC Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac | *Version*:2.2.0-ballot |
| Active as of 2025-11-06 | *Computable Name*:FRCoreOrganizationUACProfile |

 
This profile specializes the fr-core-organization profile to represent administrative units inside healthcare institutions. 
Ce profil spécialise le profil fr-core-organization pour représenter les unités administratives et comptables (UAC) en établissement 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uac)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-uac.csv), [Excel](StructureDefinition-fr-core-organization-uac.xlsx), [Schematron](StructureDefinition-fr-core-organization-uac.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uac",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationUACProfile",
  "title" : "FR Core Organization UAC Profile",
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
  "description" : "This profile specializes the fr-core-organization profile to represent administrative units inside healthcare institutions.\r\n\nCe profil spécialise le profil fr-core-organization pour représenter les unités administratives et comptables (UAC) en établissement",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
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
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description"
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
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
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
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type"
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
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type"
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Organization.partOf.type",
        "path" : "Organization.partOf.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type"
        }
      }
    ]
  }
}

```
