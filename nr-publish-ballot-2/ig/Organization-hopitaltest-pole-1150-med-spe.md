# hopitaltest-pole-1150-med-spe - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-pole-1150-med-spe**

## Example Organization: hopitaltest-pole-1150-med-spe

Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

> **fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension**
* https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension: [Organization UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)
* https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension: [Organization UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/1150 (utilisation : official, )

**type**: POLE

**name**: Pole Medecines spécialisées



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-pole-1150-med-spe",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension",
          "valueReference" : {
            "reference" : "Organization/hopitaltest-uf-4420-dialyse"
          }
        },
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension",
          "valueReference" : {
            "reference" : "Organization/hopitaltest-uac-4420-uac-01"
          }
        }
      ],
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member-extension"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://hopitalTest.fr/namingsystem/organization",
      "value" : "1150"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "POLE",
          "display" : "Pole"
        }
      ],
      "text" : "POLE"
    }
  ],
  "name" : "Pole Medecines spécialisées"
}

```
