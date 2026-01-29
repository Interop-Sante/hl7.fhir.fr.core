# hopitaltest-uf-4705-nutrition - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-uf-4705-nutrition**

## Example Organization: hopitaltest-uf-4705-nutrition

Profil: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

**FR Core Organization Short Name Extension**: UF Nutrition

**Extension Definition for Organization.description for Version 5.0**: Hospitalisation de semaine pour les patients nécessitant une nutrition entérale ou parentérale.

> **Organization Period**
* start: 2023-01-01 00:00:00+0100

**fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur-extension**: Hébergement

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/4705 (utilisation : official, )

**type**: UF

**name**: UF Nutrition

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | ph: 84705(Work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-uf-4705-nutrition",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
      "valueString" : "UF Nutrition"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description",
      "valueString" : "Hospitalisation de semaine pour les patients nécessitant une nutrition entérale ou parentérale."
    },
    {
      "extension" : [
        {
          "url" : "start",
          "valueDateTime" : "2023-01-01T00:00:00+01:00"
        }
      ],
      "url" : "http://hl7.org/fhir/StructureDefinition/organization-period"
    },
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur-extension",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
            "code" : "HEB",
            "display" : "Hébergement"
          },
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
            "code" : "MED",
            "display" : "Médicale"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://hopitalTest.fr/namingsystem/organization",
      "value" : "4705"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "UF",
          "display" : "Unité fonctionnelle"
        }
      ],
      "text" : "UF"
    }
  ],
  "name" : "UF Nutrition",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "phone",
          "value" : "84705",
          "use" : "work"
        }
      ]
    }
  ]
}

```
