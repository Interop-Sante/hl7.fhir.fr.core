# FRCoreProcedureExample - Guide d'implémentation FR Core v2.2.0

## Example Procedure: FRCoreProcedureExample

-------

**English**

-------

Profile: [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)

**FR Core Procedure Priority Extension**: Très urgent

**FR Core Procedure Difficulty Extension**: difficile

**status**: Completed

**code**: Appendicectomie, par laparotomie

**subject**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**encounter**: [Encounter: extension = 2019-01-02; identifier = Visit Number; status = in-progress; class = ambulatory (ActCode#AMB); period = 2019-01-02 --> 2019-02-02](Encounter-FRCoreEncounterExample.md)

**performed**: 2024-05-12

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Activité de soin et de pharmacie](PractitionerRole-FRCorePractitionerRoleExample.md) |

**bodySite**: appendice vermiforme



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "FRCoreProcedureExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-priority-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code" : "EM",
        "display" : "Très urgent"
      }]
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-difficulty-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "52925006",
        "display" : "difficile"
      }]
    }
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-ccam",
      "code" : "HHFA011",
      "display" : "Appendicectomie, par laparotomie"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample"
  },
  "encounter" : {
    "reference" : "Encounter/FRCoreEncounterExample"
  },
  "performedDateTime" : "2024-05-12",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/FRCorePractitionerRoleExample"
    }
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "66754008",
      "display" : "appendice vermiforme"
    }]
  }]
}

```
