# hopitaltest-uac-4420-uac-01 - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-uac-4420-uac-01**

## Example Organization: hopitaltest-uac-4420-uac-01

Profil: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)

**FR Core Organization Short Name Extension**: UF Dialyse

**Extension Definition for Organization.description for Version 5.0**: UF Dialyse - Utilisation de l'hémodialuse

> **Organization Period**
* start: 2023-01-01 00:00:00+0100

**fr/ig/fhir/core/StructureDefinition/fr-core-organization-care-rate-extension**: E2

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/4220-01 (utilisation : official, )

**type**: UAC

**name**: UAC 01 Dialyse

**partOf**: [Organization UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-uac-4420-uac-01",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
      "valueString" : "UF Dialyse"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description",
      "valueString" : "UF Dialyse - Utilisation de l'hémodialuse"
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
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-care-rate-extension",
      "valueString" : "E2"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://hopitalTest.fr/namingsystem/organization",
      "value" : "4220-01"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "UAC"
        }
      ],
      "text" : "UAC"
    }
  ],
  "name" : "UAC 01 Dialyse",
  "partOf" : {
    "reference" : "Organization/hopitaltest-uf-4420-dialyse"
  }
}

```
