# hopitaltest-uf-4701-endocrino-diab - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-uf-4701-endocrino-diab**

## Example Organization: hopitaltest-uf-4701-endocrino-diab

Profil: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

**FR Core Organization Short Name Extension**: UF Endocrino Diabeto

**Organization Period**: 2023-01-01 00:00:00+0100 --> (en cours)

**FR Core Organization Extension - Indicateur d'une unité fonctionnelle**: Hébergement

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/4701 (utilisation : official, )

**type**: Unité fonctionnelle

**name**: UF Endocrino Diabeto

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | ph: 84701(Work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-uf-4701-endocrino-diab",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
    "valueString" : "UF Endocrino Diabeto"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/organization-period",
    "valuePeriod" : {
      "start" : "2023-01-01T00:00:00+01:00"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
        "code" : "HEB"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://hopitalTest.fr/namingsystem/organization",
    "value" : "4701"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "UF"
    }]
  }],
  "name" : "UF Endocrino Diabeto",
  "contact" : [{
    "telecom" : [{
      "system" : "phone",
      "value" : "84701",
      "use" : "work"
    }]
  }]
}

```
