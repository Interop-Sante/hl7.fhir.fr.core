# FRCoreObservationBodyHeightExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreObservationBodyHeightExample**

## Example Observation: FRCoreObservationBodyHeightExample

Profil: [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md)

**status**: Final

**category**: Vital Signs

**code**: Taille du patient [Longueur] Patient ; Numérique

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**effective**: 1999-07-02

**performer**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**value**: 185 cm (Détails : code UCUMcm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FRCoreObservationBodyHeightExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
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
        "code" : "8302-2"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientExample"
  },
  "effectiveDateTime" : "1999-07-02",
  "performer" : [
    {
      "reference" : "Practitioner/FRCorePractitionerExample"
    }
  ],
  "valueQuantity" : {
    "value" : 185,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
