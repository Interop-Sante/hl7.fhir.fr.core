# hopitaltest-dept-11003-endocrino - Guide d'implémentation FR Core v2.2.0

## Exemple Organization: hopitaltest-dept-11003-endocrino

-------

**French**

-------

Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

Département d'Endocrinologie (Département) (http://hopitalTest.fr/namingsystem/organization#11003 (use: official))

-------

| | |
| :--- | :--- |
| Type: | Département |
| [FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation](StructureDefinition-fr-core-organization-member.md) | * [UF Endocrino Diabeto (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4701 (use: official))](Organization-hopitaltest-uf-4701-endocrino-diab.md)
* [UF Nutrition (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4705 (use: official))](Organization-hopitaltest-uf-4705-nutrition.md)
 |



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
