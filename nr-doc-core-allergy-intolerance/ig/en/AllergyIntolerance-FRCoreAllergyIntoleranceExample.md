# FRCoreAllergyIntoleranceExample - Guide d'implémentation FR Core v2.2.0

## Example AllergyIntolerance: FRCoreAllergyIntoleranceExample

-------

**English**

-------

Profile: [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**criticality**: Low Risk

**code**: Paracetamol

**patient**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**onset**: 2024-03-15

**recordedDate**: 2024-03-20

### Reactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Substance** | **Manifestation** | **Onset** | **Severity** |
| * | Paracetamol | éruption cutanée | 2024-03-15 | Moderate |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "FRCoreAllergyIntoleranceExample",
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
  "type" : "allergy",
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
  "onsetDateTime" : "2024-03-15",
  "recordedDate" : "2024-03-20",
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
        "system" : "http://snomed.info/sct",
        "code" : "271807003",
        "display" : "éruption cutanée"
      }]
    }],
    "onset" : "2024-03-15",
    "severity" : "moderate"
  }]
}

```
