# hopitaltest-ej-350005179 - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-ej-350005179**

## Example Organization: hopitaltest-ej-350005179

Profil: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

**FR Core Organization Extension - Catetgorie SAE**: Centre hospitalier régional (CHR)

**FR Core Organization Raison Sociale Extension**: CHRU RENNES

**identifier**: FINESS d'entité juridique/350005179 (utilisation : official, ), Identification de l'organisation au SIREN/263500076 (utilisation : official, )

**type**: Etablissement Juridique

**name**: CHRU RENNES



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-ej-350005179",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-category",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
            "code" : "101",
            "display" : "Centre hospitalier régional (CHR)"
          }
        ]
      }
    },
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale",
      "valueString" : "CHRU RENNES"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "FINEJ",
            "display" : "FINESS d'entité juridique"
          }
        ]
      },
      "system" : "https://finess.esante.gouv.fr",
      "value" : "350005179"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "SIREN",
            "display" : "Identification de l'organisation au SIREN"
          }
        ]
      },
      "system" : "https://sirene.fr",
      "value" : "263500076"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "LEGAL-ENTITY",
          "display" : "Entité légale"
        }
      ],
      "text" : "Etablissement Juridique"
    }
  ],
  "name" : "CHRU RENNES"
}

```
