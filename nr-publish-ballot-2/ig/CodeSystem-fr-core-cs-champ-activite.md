# FR Core CodeSystem Champ Activite - Codes du champ d'activité - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Champ Activite - Codes du champ d'activité**

## CodeSystem: FR Core CodeSystem Champ Activite - Codes du champ d'activité 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-champ-activite | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemChampActivite |

 
Champ d’activité clinique de l’organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationChampActivite](ValueSet-fr-core-vs-organization-champ-activite.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-champ-activite",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-champ-activite",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemChampActivite",
  "title" : "FR Core CodeSystem Champ Activite - Codes du champ d'activité",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-28T13:01:34+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
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
  "description" : "Champ d'activité clinique de l'organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
          "display" : "France"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "MCO",
      "display" : "MCO",
      "designation" : [
        {
          "use" : {
            "code" : "display"
          },
          "value" : "Médecine Chirurgie Obstétrique"
        }
      ]
    },
    {
      "code" : "SMR",
      "display" : "SMR",
      "designation" : [
        {
          "use" : {
            "code" : "display"
          },
          "value" : "Soins Médicaux et de Réadaptation"
        }
      ]
    },
    {
      "code" : "HAD",
      "display" : "HAD",
      "designation" : [
        {
          "use" : {
            "code" : "display"
          },
          "value" : "Hospitalisation à Domicile"
        }
      ]
    },
    {
      "code" : "PSY",
      "display" : "PSY",
      "designation" : [
        {
          "use" : {
            "code" : "display"
          },
          "value" : "Psychiatrie"
        }
      ]
    },
    {
      "code" : "EHPAD",
      "display" : "EHPAD",
      "designation" : [
        {
          "use" : {
            "code" : "display"
          },
          "value" : "Etablissement d'Hébergement pour Personnes Agées Dépendantes"
        }
      ]
    },
    {
      "code" : "LG_SJR",
      "display" : "Long séjour"
    },
    {
      "code" : "MSN_RTRT",
      "display" : "Maison de retraite"
    },
    {
      "code" : "ATR",
      "display" : "Autre"
    }
  ]
}

```
