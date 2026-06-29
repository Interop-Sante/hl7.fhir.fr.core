# FR Core Organization Short Name Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Short Name Extension 

Libellé court de l’organisation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* Examples for this Extension: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md), [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md), [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md), [UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md) and [UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-organization-short-name.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-organization-short-name.csv), [Excel](../StructureDefinition-fr-core-organization-short-name.xlsx), [Schematron](../StructureDefinition-fr-core-organization-short-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-short-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationShortNameExtension",
  "title" : "FR Core Organization Short Name Extension",
  "status" : "active",
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Libellé court de l'organisation",
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
      "short" : "FR Core Organization Short Name Extension",
      "definition" : "Libellé court de l'organisation"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
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
