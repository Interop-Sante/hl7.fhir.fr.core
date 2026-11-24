# FRCoreObservationRespRateExample - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationRespRateExample**

## Example Observation: FRCoreObservationRespRateExample

Profil: [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md)

**FR Core Observation Body Position Ext Extension**: position assise

**FR Core Observation Level Of Exertion Extension**: Au repos

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**effective**: 2022-11-06

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 16 respirations/minute (Détails : code UCUM/min = '/min')

**method**: examen visuel



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationRespRateExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-resp-rate"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-position-ext",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "33586001",
        "display" : "position assise"
      }]
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion",
    "valueCodeableConcept" : {
      "text" : "Au repos"
    }
  }],
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
      "code" : "9279-1"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "effectiveDateTime" : "2022-11-06",
  "performer" : [{
    "reference" : "Practitioner/FRCorePractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 16,
    "unit" : "respirations/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "32750006",
      "display" : "examen visuel"
    }]
  }
}

```
