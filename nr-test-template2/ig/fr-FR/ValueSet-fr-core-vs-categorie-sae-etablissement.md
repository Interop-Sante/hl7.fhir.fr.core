# FR Core ValueSet Categorie SAE Etablissement - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Categorie SAE Etablissement 

 
Catérorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) 2024 

 **References** 

* [FR Core Organization Extension - Catetgorie SAE](StructureDefinition-fr-core-organization-sae-categorie.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-categorie-sae-etablissement",
  "meta" : {
    "versionId" : "2024.1",
    "lastUpdated" : "2025-03-14T18:01:34.510+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-categorie-sae-etablissement",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetCategorieSAEEtablissement",
  "title" : "FR Core ValueSet Categorie SAE Etablissement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-10-25T12:00:00+01:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Catérorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement) 2024",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
      "version" : "20260505120000",
      "concept" : [{
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
      }]
    }]
  }
}

```
