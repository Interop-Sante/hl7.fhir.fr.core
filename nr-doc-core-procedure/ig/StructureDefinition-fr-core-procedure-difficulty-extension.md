# FR Core Procedure Difficulty Extension - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Procedure Difficulty Extension**

## Extension: FR Core Procedure Difficulty Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-difficulty-extension | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreProcedureDifficultyExtension |

Extension permettant d’indiquer la difficulté perçue ou mesurée d’un acte.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-procedure-difficulty-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-procedure-difficulty-extension.csv), [Excel](StructureDefinition-fr-core-procedure-difficulty-extension.xlsx), [Schematron](StructureDefinition-fr-core-procedure-difficulty-extension.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-procedure-difficulty-extension",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-difficulty-extension",
  "version" : "2.2.0",
  "name" : "FRCoreProcedureDifficultyExtension",
  "title" : "FR Core Procedure Difficulty Extension",
  "status" : "active",
  "date" : "2026-06-22T07:36:35+00:00",
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
  "description" : "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte.",
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
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Procedure Difficulty Extension",
      "definition" : "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-difficulty-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Difficulté de l'acte",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-difficulte-cisis|20260420150251"
      }
    }]
  }
}

```
