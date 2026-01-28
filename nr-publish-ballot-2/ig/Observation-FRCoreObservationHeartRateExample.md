# FRCoreObservationHeartRateExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationHeartRateExample**

## Example Observation: FRCoreObservationHeartRateExample

Profil: [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 2022-11-06

**performer**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**value**: 70 battements/minute (Détails : code UCUM/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationHeartRateExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-heartrate"
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
        "code" : "8867-4"
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
      "reference" : "Patient/FRCorePatientExample"
    }
  ],
  "valueQuantity" : {
    "value" : 70,
    "unit" : "battements/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
