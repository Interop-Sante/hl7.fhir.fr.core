# FR Core MedicationAdministration Profile - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core MedicationAdministration Profile**

## Resource Profile: FR Core MedicationAdministration Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreMedicationAdministrationProfile |

 
FRCoreMedicationAdministrationProfile permet de décrire les modalités d’administration d’un médicament au patient (médicament, mode d’administration, quantité, durée et fréquence). 

**Utilisations:**

* Référence ce Profil: [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md) and [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-administration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-medication-administration.csv), [Excel](StructureDefinition-fr-core-medication-administration.xlsx), [Schematron](StructureDefinition-fr-core-medication-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-administration",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationAdministrationProfile",
  "title" : "FR Core MedicationAdministration Profile",
  "status" : "active",
  "date" : "2026-06-22T14:38:01+00:00",
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
  "description" : "FRCoreMedicationAdministrationProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament, mode d'administration, quantité, durée et fréquence).",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.extension:occurenceR5",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "occurenceR5",
      "short" : "Fréquence d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationAdministration.occurence|0.1.0"]
      }]
    },
    {
      "id" : "MedicationAdministration.extension:occurenceR5.extension",
      "path" : "MedicationAdministration.extension.extension",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "short" : "Statut"
    },
    {
      "id" : "MedicationAdministration.category",
      "path" : "MedicationAdministration.category",
      "short" : "Acte ou situation"
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "short" : "Médicament administré",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "short" : "Durée du traitement",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationAdministration.reasonReference",
      "path" : "MedicationAdministration.reasonReference",
      "short" : "Motif du traitement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1"]
      }]
    },
    {
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "short" : "Prescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0"]
      }]
    },
    {
      "id" : "MedicationAdministration.note",
      "path" : "MedicationAdministration.note",
      "short" : "Conditions préalables à l'utilisation du médicament.",
      "max" : "1"
    },
    {
      "id" : "MedicationAdministration.dosage.extension",
      "path" : "MedicationAdministration.dosage.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.extension:sequence",
      "path" : "MedicationAdministration.dosage.extension",
      "sliceName" : "sequence",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-sequence|2.2.0"]
      }]
    },
    {
      "id" : "MedicationAdministration.dosage.text",
      "path" : "MedicationAdministration.dosage.text",
      "short" : "Instruction au patient"
    },
    {
      "id" : "MedicationAdministration.dosage.site",
      "path" : "MedicationAdministration.dosage.site",
      "short" : "Région anatomique d'administration",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis|20260420150249"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "short" : "Voie d'administration",
      "binding" : {
        "strength" : "extensible",
        "description" : "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "short" : "Dose à administrer"
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "sliceName" : "rateRatio",
      "short" : "Dose maximale",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "sliceName" : "rateQuantity",
      "short" : "Rythme d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }]
    }]
  }
}

```
