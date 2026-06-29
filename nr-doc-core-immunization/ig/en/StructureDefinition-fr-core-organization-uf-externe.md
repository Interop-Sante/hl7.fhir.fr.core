# FR Core Organization Extension - UF Externe - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Extension - UF Externe 

Indicateur permettant de définir si une UF est externe à l’établissement

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)
* Examples for this Extension: [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-organization-uf-externe.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-organization-uf-externe.csv), [Excel](../StructureDefinition-fr-core-organization-uf-externe.xlsx), [Schematron](../StructureDefinition-fr-core-organization-uf-externe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uf-externe",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationUFExterneExtension",
  "title" : "FR Core Organization Extension - UF Externe",
  "status" : "active",
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "Indicateur permettant de définir si une UF est externe à l'établissement",
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
      "short" : "FR Core Organization Extension - UF Externe",
      "definition" : "Indicateur permettant de définir si une UF est externe à l'établissement"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
