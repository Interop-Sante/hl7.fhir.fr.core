# FRCoreConditionExample - Guide d'implémentation FR Core v2.2.0

## Exemple Condition: FRCoreConditionExample

-------

**French**

-------

Profil: [FR Core Condition Profile](StructureDefinition-fr-core-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: maladie

**severity**: gravité sévère

**code**: Asthme, sans précision

**bodySite**: poumon

**subject**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**onset**: 2023-06-01

**recordedDate**: 2023-06-05

### Stages

| | |
| :--- | :--- |
| - | **Summary** |
| * | maladie chronique |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "FRCoreConditionExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "64572001",
      "display" : "maladie"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24484000",
      "display" : "gravité sévère"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
      "code" : "J45.9",
      "display" : "Asthme, sans précision"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "39607008",
      "display" : "poumon"
    }]
  }],
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "onsetDateTime" : "2023-06-01",
  "recordedDate" : "2023-06-05",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "27624003",
        "display" : "maladie chronique"
      }]
    }
  }]
}

```
