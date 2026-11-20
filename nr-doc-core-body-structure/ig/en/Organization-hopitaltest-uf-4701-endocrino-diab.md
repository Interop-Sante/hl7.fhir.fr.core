# hopitaltest-uf-4701-endocrino-diab - Guide d'implémentation FR Core v2.2.0

## Example Organization: hopitaltest-uf-4701-endocrino-diab

-------

**English**

-------

Profile: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

UF Endocrino Diabeto (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4701 (use: official))

-------

| | |
| :--- | :--- |
| Type: | Unité fonctionnelle |
| Contact Detail | * ph: 84701(Work)
 |
| [FR Core Organization Extension - Indicateur d'une unité fonctionnelle](StructureDefinition-fr-core-organization-uf-indicateur.md) | Hébergement |
| [Organization Period](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html) | 2023-01-01 00:00:00+0100 --> (ongoing) |
| [FR Core Organization Short Name Extension](StructureDefinition-fr-core-organization-short-name.md) | UF Endocrino Diabeto |



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
