# FRCoreObservationOxygenSaturationExample - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationOxygenSaturationExample**

## Example Observation: FRCoreObservationOxygenSaturationExample

Profil: [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)

**partOf**: [MedicationAdministration : status = in-progress; medication[x] = Product containing oxygen (medicinal product); effective[x] = 2022-11-06 09:00:00+0100 --> (en cours)](MedicationAdministration-FRCoreMedicationAdministrationInhaledOxygenExample.md)

**status**: Final

**category**: Vital Signs

**code**: Oxygène saturation [Fraction massique] Sang artériel ; Numérique

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 2022-11-06 09:30:00+0100

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 97 % (Détails : code UCUM% = '%')

**bodySite**: Finger structure (body structure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationOxygenSaturationExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-saturation-oxygen"]
  },
  "partOf" : [{
    "reference" : "MedicationAdministration/FRCoreMedicationAdministrationInhaledOxygenExample"
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
      "code" : "2708-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientExample",
    "type" : "Patient"
  },
  "effectiveDateTime" : "2022-11-06T09:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/FRCorePractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 97,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7569003",
      "display" : "Finger structure (body structure)"
    }]
  }
}

```
