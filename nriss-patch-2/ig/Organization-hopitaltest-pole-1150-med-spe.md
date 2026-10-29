# hopitaltest-pole-1150-med-spe - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-pole-1150-med-spe**

## Example Organization: hopitaltest-pole-1150-med-spe

Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [Organization UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/1150 (utilisation : official, )

**type**: Pôle

**name**: Pole Medecines spécialisées



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-pole-1150-med-spe",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uf-4420-dialyse"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://hopitalTest.fr/namingsystem/organization",
    "value" : "1150"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "POLE"
    }]
  }],
  "name" : "Pole Medecines spécialisées"
}

```
