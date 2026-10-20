# FRCoreObservationHeadCircumExample - Guide d'implémentation FR Core v2.2.0

## Example Observation: FRCoreObservationHeadCircumExample

-------

**English**

-------

Profile: [FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md)

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference

**subject**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**effective**: 2022-11-06

**performer**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**value**: 61 cm (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationHeadCircumExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-head-circum"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "9843-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "effectiveDateTime" : "2022-11-06",
  "performer" : [{
    "reference" : "Patient/FRCorePatientINSExample"
  }],
  "valueQuantity" : {
    "value" : 61,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
