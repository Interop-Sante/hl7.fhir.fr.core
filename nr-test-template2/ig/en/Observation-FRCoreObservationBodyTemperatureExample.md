# FRCoreObservationBodyTemperatureExample - Guide d'implémentation FR Core v2.2.0

## Example Observation: FRCoreObservationBodyTemperatureExample

-------

**English**

-------

Profile: [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md)

**status**: Final

**category**: Vital Signs

**code**: Température corporelle [Température] Patient ; Numérique

**subject**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**effective**: 2022-11-06

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 36.5 C (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationBodyTemperatureExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature"]
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
      "code" : "8310-5"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample"
  },
  "effectiveDateTime" : "2022-11-06",
  "performer" : [{
    "reference" : "Practitioner/FRCorePractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 36.5,
    "unit" : "C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
