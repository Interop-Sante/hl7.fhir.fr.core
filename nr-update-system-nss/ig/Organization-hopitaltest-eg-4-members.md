# hopitaltest-eg-4-members - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-eg-4-members**

## Example Organization: hopitaltest-eg-4-members

Profil: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

**FR Core Organization Raison Sociale Extension**: CHRU CENTRE VILLE

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [Service Endocrino Diabeto](Organization-hopitaltest-service-11006-endocrino-diabo.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [Service Dietetique](Organization-hopitaltest-service-11007-dietetique.md)

**identifier**: FINESS d'entité géographique/350009999 (utilisation : official, ), Identification de l'organisation au SIREN/26350007609999 (utilisation : official, )

**type**: Etablissement Géographique

**name**: CHRU CENTRE VILLE



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-eg-4-members",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale",
    "valueString" : "CHRU CENTRE VILLE"
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab",
      "display" : "UF Endocrino Diabeto"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uf-4705-nutrition",
      "display" : "UF Nutrition"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-service-11006-endocrino-diabo",
      "display" : "Service Endocrino Diabeto"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-service-11007-dietetique",
      "display" : "Service Dietetique"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "FINEG",
        "display" : "FINESS d'entité géographique"
      }]
    },
    "system" : "https://finess.esante.gouv.fr",
    "value" : "350009999"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "SIREN",
        "display" : "Identification de l'organisation au SIREN"
      }]
    },
    "system" : "https://sirene.fr",
    "value" : "26350007609999"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "LEGAL-ENTITY",
      "display" : "Entité légale"
    }],
    "text" : "Etablissement Géographique"
  }],
  "name" : "CHRU CENTRE VILLE"
}

```
