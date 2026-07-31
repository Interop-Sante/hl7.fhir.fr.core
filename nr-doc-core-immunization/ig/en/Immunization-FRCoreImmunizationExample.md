# FRCoreImmunizationExample - Guide d'implémentation FR Core v2.2.0

## Example Immunization: FRCoreImmunizationExample

-------

**English**

-------

Profile: [FR Core Immunization Profile](StructureDefinition-fr-core-immunization.md)

**status**: Completed

**vaccineCode**: VAXIGRIPTETRA, suspension injectable en seringue préremplie. Vaccin grippal quadrivalent (inactivé, à virion fragmenté)

**patient**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**occurrence**: 2024-10-15

**lotNumber**: K123AB

**expirationDate**: 2025-06-30

**site**: deltoïde droit

**route**: Voie intramusculaire

**doseQuantity**: 0.5 mL (Details: UCUM codemL = 'mL')

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **Series** | **DoseNumber[x]** |
| * | IMMUNIZ | 1 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "FRCoreImmunizationExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "code" : "61402736",
      "display" : "VAXIGRIPTETRA, suspension injectable en seringue préremplie. Vaccin grippal quadrivalent (inactivé, à virion fragmenté)"
    }]
  },
  "patient" : {
    "reference" : "Patient/FRCorePatientINSExample"
  },
  "occurrenceDateTime" : "2024-10-15",
  "lotNumber" : "K123AB",
  "expirationDate" : "2025-06-30",
  "site" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "16217661000119109",
      "display" : "deltoïde droit"
    }]
  },
  "route" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "code" : "20035000",
      "display" : "Voie intramusculaire"
    }]
  },
  "doseQuantity" : {
    "value" : 0.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "protocolApplied" : [{
    "series" : "IMMUNIZ",
    "doseNumberPositiveInt" : 1
  }]
}

```
