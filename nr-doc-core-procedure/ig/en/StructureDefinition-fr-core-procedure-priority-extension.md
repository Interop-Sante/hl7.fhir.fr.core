# FR Core Procedure Priority Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Procedure Priority Extension 

Extension permettant d’indiquer la priorité clinique de l’acte.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)
* Examples for this Extension: [Procedure/FRCoreProcedureExample](Procedure-FRCoreProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-procedure-priority-extension.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-procedure-priority-extension.csv), [Excel](../StructureDefinition-fr-core-procedure-priority-extension.xlsx), [Schematron](../StructureDefinition-fr-core-procedure-priority-extension.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-procedure-priority-extension",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-priority-extension",
  "version" : "2.2.0",
  "name" : "FRCoreProcedurePriorityExtension",
  "title" : "FR Core Procedure Priority Extension",
  "status" : "active",
  "date" : "2026-08-03T08:32:23+00:00",
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
  "description" : "Extension permettant d'indiquer la priorité clinique de l'acte.",
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
      "short" : "FR Core Procedure Priority Extension",
      "definition" : "Extension permettant d'indiquer la priorité clinique de l'acte."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-priority-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActPriority-cisis|20260619134042"
      }
    }]
  }
}

```
