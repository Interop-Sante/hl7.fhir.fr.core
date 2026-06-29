# FR Core Location Extension - Position du lit - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Location Extension - Position du lit 

Position du lit dans la chambre

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Location Profile](StructureDefinition-fr-core-location.md)
* Examples for this Extension: [Lit Fenetre - chambre 04](Location-hopitaltest-endocrino-ch04-litF.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-location-position-lit.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-location-position-lit.csv), [Excel](../StructureDefinition-fr-core-location-position-lit.xlsx), [Schematron](../StructureDefinition-fr-core-location-position-lit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-location-position-lit",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit",
  "version" : "2.2.0",
  "name" : "FRCoreLocationPositionLitExtension",
  "title" : "FR Core Location Extension - Position du lit",
  "status" : "active",
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "Position du lit dans la chambre",
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Location Extension - Position du lit",
      "definition" : "Position du lit dans la chambre"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-position-lit|2.2.0"
      }
    }]
  }
}

```
