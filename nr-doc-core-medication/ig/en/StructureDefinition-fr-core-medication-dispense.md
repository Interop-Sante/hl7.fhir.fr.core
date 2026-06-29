# FR Core MedicationDispense Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core MedicationDispense Profile 

 
FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-medication-dispense.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-medication-dispense.csv), [Excel](../StructureDefinition-fr-core-medication-dispense.xlsx), [Schematron](../StructureDefinition-fr-core-medication-dispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-dispense",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-dispense",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationDispenseProfile",
  "title" : "FR Core MedicationDispense Profile",
  "status" : "active",
  "date" : "2026-06-29T12:42:10+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "FRCoreMedicationDispenseProfile permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "short" : "Médicament délivré",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Posologie",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration|2.2.0"]
      }]
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Référence de la prescription",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0"]
      }]
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Complétude de la dispensation",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.type.coding",
      "path" : "MedicationDispense.type.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis|20260420150249"
      }
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.quantity.unit",
      "path" : "MedicationDispense.quantity.unit",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "MedicationDispense.dosageInstruction.text",
      "path" : "MedicationDispense.dosageInstruction.text",
      "short" : "Instructions au dispensateur"
    },
    {
      "id" : "MedicationDispense.dosageInstruction.additionalInstruction",
      "path" : "MedicationDispense.dosageInstruction.additionalInstruction",
      "short" : "Instruction au patient sous forme codée"
    },
    {
      "id" : "MedicationDispense.dosageInstruction.patientInstruction",
      "path" : "MedicationDispense.dosageInstruction.patientInstruction",
      "short" : "Instructions au patient"
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Acte de substitution"
    },
    {
      "id" : "MedicationDispense.substitution.type",
      "path" : "MedicationDispense.substitution.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "G",
          "display" : "Substitution autorisée par un produit générique"
        }]
      }
    }]
  }
}

```
