# FR Core Organization Raison Sociale Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Raison Sociale Extension 

Raison Sociale l’organisation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)
* Examples for this Extension: [CHRU CENTRE VILLE](Organization-hopitaltest-eg-4-members.md) and [CHRU RENNES](Organization-hopitaltest-ej-350005179.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-organization-raison-sociale.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-organization-raison-sociale.csv), [Excel](../StructureDefinition-fr-core-organization-raison-sociale.xlsx), [Schematron](../StructureDefinition-fr-core-organization-raison-sociale.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-raison-sociale",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationRaisonSocialeExtension",
  "title" : "FR Core Organization Raison Sociale Extension",
  "status" : "active",
  "date" : "2026-06-04T15:45:54+00:00",
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
  "description" : "Raison Sociale l'organisation",
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
      "short" : "FR Core Organization Raison Sociale Extension",
      "definition" : "Raison Sociale l'organisation"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
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
