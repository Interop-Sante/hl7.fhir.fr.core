# FR Core AdverseEvent Extension - Outcome (backport R5→R4) - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core AdverseEvent Extension - Outcome (backport R5→R4) 

Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l’IG cross-version xver-r5.r4.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core AdverseEvent Profile](StructureDefinition-fr-core-adverse-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-extension-AdverseEvent.outcome.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-extension-AdverseEvent.outcome.csv), [Excel](../StructureDefinition-extension-AdverseEvent.outcome.xlsx), [Schematron](../StructureDefinition-extension-AdverseEvent.outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "extension-AdverseEvent.outcome",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.outcome",
  "version" : "2.2.0",
  "name" : "FRCoreAdverseEventOutcomeExtension",
  "title" : "FR Core AdverseEvent Extension - Outcome (backport R5→R4)",
  "status" : "active",
  "date" : "2026-07-30T14:45:27+00:00",
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
  "description" : "Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4.",
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
    "expression" : "AdverseEvent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core AdverseEvent Extension - Outcome (backport R5→R4)",
      "definition" : "Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.outcome"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Évolution de l'effet indésirable (backport outcome R5→R4)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260619134042"
      }
    }]
  }
}

```
