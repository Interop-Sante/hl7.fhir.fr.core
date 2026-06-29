# FR Core Lunar Date Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Lunar Date Extension 

Date de naissance approximative du patient. Approximate birthdate of the patient

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Patient/FRCorePatientDeceasedExample](Patient-FRCorePatientDeceasedExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-lunar-date.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-lunar-date.csv), [Excel](../StructureDefinition-fr-core-lunar-date.xlsx), [Schematron](../StructureDefinition-fr-core-lunar-date.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-lunar-date",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date",
  "version" : "2.2.0",
  "name" : "FRCoreLunarDateExtension",
  "title" : "FR Core Lunar Date Extension",
  "status" : "active",
  "date" : "2026-06-29T12:39:39+00:00",
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
  "description" : "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Indicate an approximate birthdate | Permet de spécifier une date approximative de naissance du patient",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Approximative birthdate | Date de naissance approximative",
      "definition" : "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
