# FR Core MedicationRequest Treatment Intent Extension - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core MedicationRequest Treatment Intent Extension**

## Extension: FR Core MedicationRequest Treatment Intent Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreTreatmentIntentExtension |

Intention globale du traitement.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-treatment-intent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-treatment-intent.csv), [Excel](StructureDefinition-fr-core-treatment-intent.xlsx), [Schematron](StructureDefinition-fr-core-treatment-intent.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-treatment-intent",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent",
  "version" : "2.2.0",
  "name" : "FRCoreTreatmentIntentExtension",
  "title" : "FR Core MedicationRequest Treatment Intent Extension",
  "status" : "active",
  "date" : "2026-06-22T12:42:43+00:00",
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
  "description" : "Intention globale du traitement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core MedicationRequest Treatment Intent Extension",
      "definition" : "Intention globale du traitement."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Intention globale du traitement",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "description" : "Codes SNOMED CT pour l'intention globale du traitement",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-treatment-intent|2.2.0"
      }
    }]
  }
}

```
