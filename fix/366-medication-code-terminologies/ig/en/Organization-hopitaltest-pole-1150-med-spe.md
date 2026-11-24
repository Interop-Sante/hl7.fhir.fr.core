# hopitaltest-pole-1150-med-spe - Guide d'implémentation FR Core v3.0.0-ballot

## Example Organization: hopitaltest-pole-1150-med-spe

-------

**English**

-------

Profile: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

Pole Medecines spécialisées (Pôle) (http://hopitalTest.fr/namingsystem/organization#1150 (use: official))

-------

| | |
| :--- | :--- |
| Type: | Pôle |
| [FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation](StructureDefinition-fr-core-organization-member.md) | [UF Dialyse (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4220 (use: official))](Organization-hopitaltest-uf-4420-dialyse.md) |



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
