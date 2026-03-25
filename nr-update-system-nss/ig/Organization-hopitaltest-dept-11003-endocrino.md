# hopitaltest-dept-11003-endocrino - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-dept-11003-endocrino**

## Example Organization: hopitaltest-dept-11003-endocrino

Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [Organization UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [Organization UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/11003 (utilisation : official, )

**type**: Département

**name**: Département d'Endocrinologie



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-dept-11003-endocrino",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uf-4705-nutrition"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://hopitalTest.fr/namingsystem/organization",
    "value" : "11003"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "DEPARTEMENT"
    }]
  }],
  "name" : "Département d'Endocrinologie"
}

```
