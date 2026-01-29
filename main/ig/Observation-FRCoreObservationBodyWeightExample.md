# FRCoreObservationBodyWeightExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationBodyWeightExample**

## Example Observation: FRCoreObservationBodyWeightExample

Profil: [FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md)

**status**: Final

**category**: Vital Signs

**code**: Poids corporel [Masse] Patient ; Numérique

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 2022-11-06

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 96 Kg (Détails : code UCUMkg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationBodyWeightExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
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
        "code" : "29463-7"
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
    "value" : 96,
    "unit" : "Kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
