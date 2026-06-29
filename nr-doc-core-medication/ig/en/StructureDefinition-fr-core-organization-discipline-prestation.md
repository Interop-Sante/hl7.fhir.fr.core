# FR Core Organization Extension - Discipline Prestation - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Extension - Discipline Prestation 

Discipline de prestation d’une UAC

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)
* Examples for this Extension: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md) and [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-organization-discipline-prestation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-organization-discipline-prestation.csv), [Excel](../StructureDefinition-fr-core-organization-discipline-prestation.xlsx), [Schematron](../StructureDefinition-fr-core-organization-discipline-prestation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-discipline-prestation",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationDisciplinePrestationExtension",
  "title" : "FR Core Organization Extension - Discipline Prestation",
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
  "description" : "Discipline de prestation d'une UAC",
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Organization Extension - Discipline Prestation",
      "definition" : "Discipline de prestation d'une UAC"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-discipline-prestation|2.2.0"
      }
    }]
  }
}

```
