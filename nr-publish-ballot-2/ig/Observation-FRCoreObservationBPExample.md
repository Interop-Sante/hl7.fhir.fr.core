# FRCoreObservationBPExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationBPExample**

## Example Observation: FRCoreObservationBPExample

Profil: [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 2012-09-17

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**interpretation**: Below low normal

**bodySite**: artère humérale

> **component****code**: Systolic blood pressure**value**: 107 mm[Hg] (Détails : code UCUMmm[Hg] = 'mm[Hg]')**interpretation**: Normal

> **component****code**: Diastolic blood pressure**value**: 60 mm[Hg] (Détails : code UCUMmm[Hg] = 'mm[Hg]')**interpretation**: En dessous de la normale



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationBPExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientExample",
    "type" : "Patient"
  },
  "effectiveDateTime" : "2012-09-17",
  "performer" : [
    {
      "reference" : "Practitioner/FRCorePractitionerExample"
    }
  ],
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "low"
        }
      ],
      "text" : "Below low normal"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "17137000",
        "display" : "artère humérale"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 107,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "N",
              "display" : "Normal"
            }
          ],
          "text" : "Normal"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 60,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "L",
              "display" : "low"
            }
          ],
          "text" : "En dessous de la normale"
        }
      ]
    }
  ]
}

```
