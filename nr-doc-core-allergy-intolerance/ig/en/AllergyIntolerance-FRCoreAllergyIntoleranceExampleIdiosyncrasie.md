# FRCoreAllergyIntoleranceExampleIdiosyncrasie - Guide d'implémentation FR Core v2.2.0

## Example AllergyIntolerance: FRCoreAllergyIntoleranceExampleIdiosyncrasie

-------

**English**

-------

Profile: [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: 

**criticality**: Low Risk

**code**: Paracetamol

**patient**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**onset**: 2024-06-01

**recordedDate**: 2024-06-03

### Reactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Substance** | **Manifestation** | **Onset** | **Severity** |
| * | Paracetamol | Asthénie | 2024-06-01 | Mild |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "FRCoreAllergyIntoleranceExampleIdiosyncrasie",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "_type" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "56840009",
          "display" : "idiosyncrasie"
        }]
      }
    }]
  },
  "criticality" : "low",
  "code" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-sms",
      "code" : "100000090270",
      "display" : "Paracetamol"
    }]
  },
  "patient" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "onsetDateTime" : "2024-06-01",
  "recordedDate" : "2024-06-03",
  "reaction" : [{
    "substance" : {
      "coding" : [{
        "system" : "https://smt.esante.gouv.fr/terminologie-sms",
        "code" : "100000090270",
        "display" : "Paracetamol"
      }]
    },
    "manifestation" : [{
      "coding" : [{
        "system" : "https://smt.esante.gouv.fr/terminologie-cim11-mms",
        "code" : "MG22",
        "display" : "Asthénie"
      }]
    }],
    "onset" : "2024-06-01",
    "severity" : "mild"
  }]
}

```
