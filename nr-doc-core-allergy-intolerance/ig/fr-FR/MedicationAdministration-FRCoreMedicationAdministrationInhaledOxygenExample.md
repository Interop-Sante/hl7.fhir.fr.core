# FRCoreMedicationAdministrationInhaledOxygenExample - Guide d'implémentation FR Core v2.2.0

##  MedicationAdministration: FRCoreMedicationAdministrationInhaledOxygenExample

Profil: [FR Core Medication Administration Inhaled Oxygen Profile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md)

**status**: In Progress

**medication**: produit contenant de l'oxygène

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**effective**: 2022-11-06 09:00:00+0100 --> (en cours)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md) |

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Rate[x]** |
| * | Oxygène 2 L/min par lunette nasale | voie inhalée | 2 L/min (Détails : code UCUML/min = 'L/min') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "FRCoreMedicationAdministrationInhaledOxygenExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen"]
  },
  "status" : "in-progress",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "767111007",
      "display" : "produit contenant de l'oxygène"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "effectivePeriod" : {
    "start" : "2022-11-06T09:00:00+01:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/FRCorePractitionerExample",
      "type" : "Practitioner"
    }
  }],
  "dosage" : {
    "text" : "Oxygène 2 L/min par lunette nasale",
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "447694001",
        "display" : "voie inhalée"
      }]
    },
    "rateQuantity" : {
      "value" : 2,
      "unit" : "L/min",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/min"
    }
  }
}

```
