# FR Core Observation Body Temperature Profile - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Observation Body Temperature Profile**

## Resource Profile: FR Core Observation Body Temperature Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreObservationBodyTemperatureProfile |

 
French profile for body temperature. 
Profil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d’HL7 

**Utilisations:**

* Exemples pour ce Profil: [Observation/FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-body-temperature)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-observation-body-temperature.csv), [Excel](StructureDefinition-fr-core-observation-body-temperature.xlsx), [Schematron](StructureDefinition-fr-core-observation-body-temperature.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-body-temperature",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreObservationBodyTemperatureProfile",
  "title" : "FR Core Observation Body Temperature Profile",
  "status" : "active",
  "date" : "2025-12-29T16:43:45+00:00",
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
  "description" : "French profile for body temperature.\r\n\nProfil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d'HL7",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodytemp|4.0.1",
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
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature|2.2.0-ballot"
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
        "id" : "Observation.extension:levelOfExertion",
        "path" : "Observation.extension",
        "sliceName" : "levelOfExertion",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion|2.2.0-ballot"
            ]
          }
        ]
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
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0-ballot"
            ]
          }
        ]
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
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"
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
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vsbody-temp-meas-body-location|2.2.0-ballot"
        }
      }
    ]
  }
}

```
