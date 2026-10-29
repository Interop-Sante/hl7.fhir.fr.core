# FRCoreAllergyIntoleranceExampleHypersensibilite - Guide d'implémentation FR Core v2.2.0

## Exemple AllergyIntolerance: FRCoreAllergyIntoleranceExampleHypersensibilite

-------

**French**

-------

Profil: [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: 

**criticality**: Low Risk

**code**: Paracetamol

**patient**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**onset**: 2024-04-02

**recordedDate**: 2024-04-05

### Reactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Substance** | **Manifestation** | **Onset** | **Severity** |
| * | Paracetamol | Éruption cutanée aigüe de nature incertaine ou non précisée | 2024-04-02 | Moderate |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "FRCoreAllergyIntoleranceExampleHypersensibilite",
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
          "code" : "609396006",
          "display" : "hypersensibilité non allergique"
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
  "onsetDateTime" : "2024-04-02",
  "recordedDate" : "2024-04-05",
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
        "code" : "ME62",
        "display" : "Éruption cutanée aigüe de nature incertaine ou non précisée"
      }]
    }],
    "onset" : "2024-04-02",
    "severity" : "moderate"
  }]
}

```
