# FR Core Additional When Values Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Additional When Values Extension 

Codes additionnels pour l’élément Dosage.timing.repeat.when, issus de PN13.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-additional-when-values.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-additional-when-values.csv), [Excel](../StructureDefinition-fr-core-additional-when-values.xlsx), [Schematron](../StructureDefinition-fr-core-additional-when-values.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-additional-when-values",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-additional-when-values",
  "version" : "2.2.0",
  "name" : "FRCoreAdditionalWhenValuesExtension",
  "title" : "FR Core Additional When Values Extension",
  "status" : "active",
  "date" : "2026-08-13T09:15:12+00:00",
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
  "description" : "Codes additionnels pour l'élément Dosage.timing.repeat.when, issus de PN13.",
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
    "expression" : "Dosage.timing.repeat"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Codes additionnels pour l'élément when",
      "definition" : "Précise des codes additionnels pour la période d'occurrence qui ne sont pas dans le jeu de valeurs event-timing"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-additional-when-values"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-additional-when-codes|2.2.0"
      }
    }]
  }
}

```
