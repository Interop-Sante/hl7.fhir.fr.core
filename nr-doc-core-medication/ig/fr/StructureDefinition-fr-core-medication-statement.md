# FR Core MedicationStatement Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core MedicationStatement Profile 

 
FRCoreMedicationStatementProfile permet de décrire les modalités d’administration d’un médicament au patient (médicament déclaré, mode d’administration, quantité, durée et fréquence). Couvre les bilans médicamenteux et conciliations médicamenteuses. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-statement)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core MedicationRequest Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0)](StructureDefinition-fr-core-medication-request.md)
* [FR Core MedicationAdministration Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration|2.2.0)](StructureDefinition-fr-core-medication-administration.md)
* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core MedicationRequest Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0)](StructureDefinition-fr-core-medication-request.md)
* [FR Core MedicationAdministration Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration|2.2.0)](StructureDefinition-fr-core-medication-administration.md)
* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-medication-statement.csv), [Excel](../StructureDefinition-fr-core-medication-statement.xlsx), [Schematron](../StructureDefinition-fr-core-medication-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-statement",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-statement",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationStatementProfile",
  "title" : "FR Core MedicationStatement Profile",
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
  "description" : "FRCoreMedicationStatementProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament déclaré, mode d'administration, quantité, durée et fréquence). Couvre les bilans médicamenteux et conciliations médicamenteuses.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "short" : "Prescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "short" : "Administration associée",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration|2.2.0"]
      }]
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "Statut"
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "short" : "Acte ou situation"
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "short" : "Médicament",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "short" : "Durée du traitement",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "short" : "Motif du traitement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1"]
      }]
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "short" : "Conditions préalables à l'utilisation du médicament.",
      "max" : "1"
    },
    {
      "id" : "MedicationStatement.dosage.sequence",
      "path" : "MedicationStatement.dosage.sequence",
      "short" : "Séquence (dosages progressifs/fractionnés)"
    },
    {
      "id" : "MedicationStatement.dosage.additionalInstruction",
      "path" : "MedicationStatement.dosage.additionalInstruction",
      "short" : "Instructions au patient (codé)"
    },
    {
      "id" : "MedicationStatement.dosage.additionalInstruction.text",
      "path" : "MedicationStatement.dosage.additionalInstruction.text",
      "short" : "Instruction au patient (texte libre)"
    },
    {
      "id" : "MedicationStatement.dosage.timing",
      "path" : "MedicationStatement.dosage.timing",
      "short" : "Fréquence d'administration"
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "short" : "Dosage conditionnel"
    },
    {
      "id" : "MedicationStatement.dosage.site",
      "path" : "MedicationStatement.dosage.site",
      "short" : "Région anatomique d'administration",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis|20260420150249"
      }
    },
    {
      "id" : "MedicationStatement.dosage.route",
      "path" : "MedicationStatement.dosage.route",
      "short" : "Voie d'administration",
      "binding" : {
        "strength" : "extensible",
        "description" : "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
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
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "Dose déclarée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }]
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
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
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "short" : "Rythme d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }]
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod",
      "short" : "Dose maximale"
    }]
  }
}

```
