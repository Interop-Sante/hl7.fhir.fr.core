# FR Core AdverseEvent Extension - Code (backport R5→R4) - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core AdverseEvent Extension - Code (backport R5→R4) 

Mime AdverseEvent.code (R5, renommage de AdverseEvent.event en R4) — non couvert par l’IG cross-version xver-r5.r4. Porte l’origine de l’effet indésirable (jdv-origine-effet-indesirable-cisis).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core AdverseEvent Profile](StructureDefinition-fr-core-adverse-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-extension-AdverseEvent.code.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-extension-AdverseEvent.code.csv), [Excel](../StructureDefinition-extension-AdverseEvent.code.xlsx), [Schematron](../StructureDefinition-extension-AdverseEvent.code.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "extension-AdverseEvent.code",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.code",
  "version" : "2.2.0",
  "name" : "FRCoreAdverseEventCodeExtension",
  "title" : "FR Core AdverseEvent Extension - Code (backport R5→R4)",
  "status" : "active",
  "date" : "2026-07-30T14:18:46+00:00",
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
  "description" : "Mime AdverseEvent.code (R5, renommage de AdverseEvent.event en R4) — non couvert par l'IG cross-version xver-r5.r4. Porte l'origine de l'effet indésirable (jdv-origine-effet-indesirable-cisis).",
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
      "short" : "FR Core AdverseEvent Extension - Code (backport R5→R4)",
      "definition" : "Mime AdverseEvent.code (R5, renommage de AdverseEvent.event en R4) — non couvert par l'IG cross-version xver-r5.r4. Porte l'origine de l'effet indésirable (jdv-origine-effet-indesirable-cisis)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.code"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Origine de l'effet indésirable (backport code R5→R4)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260619134042"
      }
    }]
  }
}

```
