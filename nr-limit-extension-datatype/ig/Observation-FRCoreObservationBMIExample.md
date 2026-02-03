# FRCoreObservationBMIExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationBMIExample**

## Example Observation: FRCoreObservationBMIExample

Profil: [FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md)

**status**: Final

**category**: Vital Signs

**code**: Indice de masse corporelle [Ratio] Patient ; Numérique

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 2022-11-06

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 28 Kg/m2 (Détails : code UCUMkg/m2 = 'kg/m2')

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationBMIExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bmi"
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
        "code" : "39156-5"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientExample",
    "type" : "Patient"
  },
  "effectiveDateTime" : "2022-11-06",
  "performer" : [
    {
      "reference" : "Practitioner/FRCorePractitionerExample"
    }
  ],
  "valueQuantity" : {
    "value" : 28,
    "unit" : "Kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }
      ]
    }
  ]
}

```
