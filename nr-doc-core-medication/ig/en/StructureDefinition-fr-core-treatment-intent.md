# FR Core MedicationRequest Treatment Intent Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core MedicationRequest Treatment Intent Extension 

Intention globale du traitement.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-treatment-intent.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-treatment-intent.csv), [Excel](../StructureDefinition-fr-core-treatment-intent.xlsx), [Schematron](../StructureDefinition-fr-core-treatment-intent.sch) 



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
