# FR Core Medication Administration Sequence Extension - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Medication Administration Sequence Extension**

## Extension: FR Core Medication Administration Sequence Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-sequence | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreMedicationAdministrationSequenceExtension |

Extension permettant d’indiquer l’ordre d’une prise dans le cadre d’un schéma de traitement comportant des dosages progressifs ou fractionnés dans le contexte de MedicationAdministration.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-administration-sequence)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-medication-administration-sequence.csv), [Excel](StructureDefinition-fr-core-medication-administration-sequence.xlsx), [Schematron](StructureDefinition-fr-core-medication-administration-sequence.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-administration-sequence",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-sequence",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationAdministrationSequenceExtension",
  "title" : "FR Core Medication Administration Sequence Extension",
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
  "description" : "Extension permettant d'indiquer l'ordre d'une prise dans le cadre d'un schéma de traitement comportant des dosages progressifs ou fractionnés dans le contexte de MedicationAdministration.",
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
    "expression" : "MedicationAdministration"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Medication Administration Sequence Extension",
      "definition" : "Extension permettant d'indiquer l'ordre d'une prise dans le cadre d'un schéma de traitement comportant des dosages progressifs ou fractionnés dans le contexte de MedicationAdministration."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-sequence"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
