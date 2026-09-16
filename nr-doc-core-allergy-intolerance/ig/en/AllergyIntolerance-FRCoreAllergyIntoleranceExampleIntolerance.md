# FRCoreAllergyIntoleranceExampleIntolerance - Guide d'implémentation FR Core v2.2.0

## Example AllergyIntolerance: FRCoreAllergyIntoleranceExampleIntolerance

-------

**English**

-------

Profile: [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Intolerance

**criticality**: Low Risk

**code**: Paracetamol

**patient**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**onset**: 2024-05-10

**recordedDate**: 2024-05-12

### Reactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Substance** | **Manifestation** | **Onset** | **Severity** |
| * | Paracetamol | Douleur abdominale ou pelvienne | 2024-05-10 | Mild |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "FRCoreAllergyIntoleranceExampleIntolerance",
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
  "type" : "intolerance",
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
  "onsetDateTime" : "2024-05-10",
  "recordedDate" : "2024-05-12",
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
        "code" : "MD81",
        "display" : "Douleur abdominale ou pelvienne"
      }]
    }],
    "onset" : "2024-05-10",
    "severity" : "mild"
  }]
}

```
