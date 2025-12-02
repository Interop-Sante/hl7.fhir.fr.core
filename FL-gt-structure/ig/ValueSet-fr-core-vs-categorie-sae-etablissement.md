# FR Core ValueSet Categorie SAE Etablissement - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Categorie SAE Etablissement**

## ValueSet: FR Core ValueSet Categorie SAE Etablissement 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-categorie-sae-etablissement | *Version*:2.2.0-ballot |
| Active as of 2024-10-25 | *Computable Name*:FRCoreValueSetCategorieSAEEtablissement |

 
Catégrorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) 2024 

 **References** 

* [FR Core Organization Extension - Catetgorie SAE](StructureDefinition-fr-core-organization-sae-category.md)

### Définition logique (CLD)

version : 2024.1; Dernière mise à jour : 2025-03-14 18:01:34+0000

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R66-CategorieEtablissement.html)version 📦20250425120000

 

### Expansion

Expansion effectuée en interne basée sur [codesystem TRE_R66_CategorieEtablissement v20250425120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R66-CategorieEtablissement.html)

Ce jeu de valeur (ValueSet) contient 32 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-categorie-sae-etablissement",
  "meta" : {
    "versionId" : "2024.1",
    "lastUpdated" : "2025-03-14T18:01:34.510+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-categorie-sae-etablissement",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetCategorieSAEEtablissement",
  "title" : "FR Core ValueSet Categorie SAE Etablissement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-10-25T12:00:00+01:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Catégrorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement) 2024",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
        "concept" : [
          {
            "code" : "101",
            "display" : "Centre hospitalier régional (CHR)"
          },
          {
            "code" : "106",
            "display" : "Centre hospitalier, ex Hôpital local"
          },
          {
            "code" : "109",
            "display" : "Etablissement de santé privé autorisé en SSR"
          },
          {
            "code" : "114",
            "display" : "Hôpital des Armées"
          },
          {
            "code" : "115",
            "display" : "Etablissement de soins du service de santé des Armées"
          },
          {
            "code" : "122",
            "display" : "Établissement de soins obstétriques et chirurgico-gynécologiques"
          },
          {
            "code" : "127",
            "display" : "Hospitalisation à domicile"
          },
          {
            "code" : "128",
            "display" : "Établissement de soins chirurgicaux"
          },
          {
            "code" : "129",
            "display" : "Établissement de soins médicaux"
          },
          {
            "code" : "131",
            "display" : "Centre de lutte contre le cancer (CLCC)"
          },
          {
            "code" : "141",
            "display" : "Centre de dialyse"
          },
          {
            "code" : "146",
            "display" : "Structure d'alternative à la dialyse en centre"
          },
          {
            "code" : "156",
            "display" : "Centre médico-psychologique (CMP)"
          },
          {
            "code" : "161",
            "display" : "Maison de santé pour maladies mentales"
          },
          {
            "code" : "292",
            "display" : "Centre hospitalier spécialisé dans la lutte contre les maladies mentales (CHS)"
          },
          {
            "code" : "355",
            "display" : "Centre hospitalier non dénommé ailleurs (CH)"
          },
          {
            "code" : "362",
            "display" : "Etablissement de soins longue durée (SLD)"
          },
          {
            "code" : "365",
            "display" : "Etablissement de soins pluridisciplinaire"
          },
          {
            "code" : "366",
            "display" : "Atelier thérapeutique"
          },
          {
            "code" : "412",
            "display" : "Appartement thérapeutique"
          },
          {
            "code" : "415",
            "display" : "Service médico-psychologique régional (SMPR)"
          },
          {
            "code" : "422",
            "display" : "Traitements spécialisés à domicile"
          },
          {
            "code" : "425",
            "display" : "Centre d'accueil thérapeutique à temps partiel (CATTP)"
          },
          {
            "code" : "426",
            "display" : "Syndicat Inter Hospitalier (SIH)"
          },
          {
            "code" : "430",
            "display" : "Centre de postcure pour malades mentaux"
          },
          {
            "code" : "433",
            "display" : "Etablissement sanitaire des prisons"
          },
          {
            "code" : "444",
            "display" : "Centre Crise ou d'accueil Permanent"
          },
          {
            "code" : "695",
            "display" : "Groupement de coopération sanitaire de moyens - Exploitant GCS-Exploitant"
          },
          {
            "code" : "696",
            "display" : "Groupement de coopération sanitaire de moyens GCS-Moyens"
          },
          {
            "code" : "697",
            "display" : "Groupement de coopération sanitaire - Etablissement de santé GCS-ES"
          },
          {
            "code" : "698",
            "display" : "Autre établissement soumis aux dispositions de la loi hospitalière"
          },
          {
            "code" : "699",
            "display" : "Entité Ayant Autorisation"
          }
        ]
      }
    ]
  }
}

```
