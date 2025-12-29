# FR Core Observation Blood Pressure Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Observation Blood Pressure Profile**

## Resource Profile: FR Core Observation Blood Pressure Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreObservationBpProfile |

 
French profile for blood pressure. 
Profil français de la pression artérielle. Profil basé sur le profil bp d’HL7 

**Utilisations:**

* Exemples pour ce Profil: [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-bp)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-observation-bp.csv), [Excel](StructureDefinition-fr-core-observation-bp.xlsx), [Schematron](StructureDefinition-fr-core-observation-bp.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-bp",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreObservationBpProfile",
  "title" : "FR Core Observation Blood Pressure Profile",
  "status" : "active",
  "date" : "2025-12-29T14:07:05+00:00",
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
  "description" : "French profile for blood pressure.\r\n\nProfil français de la pression artérielle. Profil basé sur le profil bp d'HL7",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bp|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.meta.profile",
        "path" : "Observation.meta.profile",
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
        "id" : "Observation.meta.profile:fr-canonical",
        "path" : "Observation.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp|2.2.0-ballot"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:supportingInfo",
        "path" : "Observation.extension",
        "sliceName" : "supportingInfo",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "definition" : "Often just a dateTime for Vital Signs"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0-ballot",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "max" : "0"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location|2.2.0-ballot"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-method|2.2.0-ballot"
        }
      },
      {
        "id" : "Observation.component:SystolicBP",
        "path" : "Observation.component",
        "sliceName" : "SystolicBP"
      },
      {
        "id" : "Observation.component:SystolicBP.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1
      },
      {
        "id" : "Observation.component:SystolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:DiastolicBP",
        "path" : "Observation.component",
        "sliceName" : "DiastolicBP",
        "short" : "Used when reporting diastolic blood pressure.",
        "definition" : "Used when reporting diastolic blood pressure."
      },
      {
        "id" : "Observation.component:DiastolicBP.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1
      },
      {
        "id" : "Observation.component:DiastolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "description" : "Erroneous slicing wainting for R5 correction",
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:MeanBP",
        "path" : "Observation.component",
        "sliceName" : "MeanBP",
        "short" : "Mean blood pressure",
        "definition" : "Mean blood pressure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:MeanBP.code.coding",
        "path" : "Observation.component.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            },
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Erroneous slicing wainting for R5 correction",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:MeanBP.code.coding:MBPCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "MBPCode",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:MeanBP.code.coding:MBPCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:MeanBP.code.coding:MBPCode.code",
        "path" : "Observation.component.code.coding.code",
        "short" : "Mean blood pressure",
        "definition" : "Mean blood pressure",
        "min" : 1,
        "patternCode" : "8478-0"
      }
    ]
  }
}

```
