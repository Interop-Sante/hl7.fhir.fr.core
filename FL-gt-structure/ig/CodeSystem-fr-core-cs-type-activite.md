# FR Core CodeSystem Type d'activité - nomenclature SAE - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Type d'activité - nomenclature SAE**

## CodeSystem: FR Core CodeSystem Type d'activité - nomenclature SAE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-activite | *Version*:2.2.0-ballot |
| Draft as of 2025-12-02 | *Computable Name*:FRCoreCodeSystemTypeActivite |

 
La nomenclature des types d’activité de la terminologie SAE (Statistique Annuelle des Etablissements de santé) maintenue par la DREES. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationTypeActivite](ValueSet-fr-core-vs-oragnization-type-activite.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-type-activite",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-activite",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemTypeActivite",
  "title" : "FR Core CodeSystem Type d'activité - nomenclature SAE",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-02T21:43:16+00:00",
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
  "description" : "La nomenclature des types d'activité de la terminologie SAE (Statistique Annuelle des Etablissements de santé) maintenue par la DREES.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 37,
  "concept" : [
    {
      "code" : "01",
      "display" : "Administration"
    },
    {
      "code" : "02",
      "display" : "Services hôteliers et techniques"
    },
    {
      "code" : "03",
      "display" : "Hospitalisation complète (non compris hospitalisation de semaine)"
    },
    {
      "code" : "04",
      "display" : "Hospitalisation de jour"
    },
    {
      "code" : "05",
      "display" : "Hospitalisation de nuit"
    },
    {
      "code" : "06",
      "display" : "Hospitalisation à domicile"
    },
    {
      "code" : "07",
      "display" : "Consultations, soins externes"
    },
    {
      "code" : "08",
      "display" : "Bloc opératoire (y compris obstétrical et gynécologique)"
    },
    {
      "code" : "09",
      "display" : "Autres unités médico-techniques (anesthésiologie, explorations fonctionnelles, rééducation et réadaptation fonctionnelles, pharmacie)"
    },
    {
      "code" : "10",
      "display" : "Accueil des urgences"
    },
    {
      "code" : "11",
      "display" : "Hébergement complet ou internat (non compris internat de semaine)"
    },
    {
      "code" : "12",
      "display" : "Hébergement de nuit en structure regroupée"
    },
    {
      "code" : "13",
      "display" : "Semi-internat"
    },
    {
      "code" : "14",
      "display" : "Externat"
    },
    {
      "code" : "15",
      "display" : "Placement en famille d'accueil (strictement social)"
    },
    {
      "code" : "16",
      "display" : "Prestations sur le lieu de vie (non compris placement familial)"
    },
    {
      "code" : "17",
      "display" : "Internat de semaine"
    },
    {
      "code" : "18",
      "display" : "Hébergement de nuit en structure éclatée"
    },
    {
      "code" : "19",
      "display" : "Traitements et cures ambulatoires"
    },
    {
      "code" : "20",
      "display" : "Hospitalisation de semaine"
    },
    {
      "code" : "21",
      "display" : "Accueil de jour"
    },
    {
      "code" : "23",
      "display" : "Anesthésie ou chirurgie ambulatoires"
    },
    {
      "code" : "24",
      "display" : "Accueil et prise en charge en service d'accueil familial thérapeutique psychiatrique"
    },
    {
      "code" : "25",
      "display" : "Hébergement temporaire de week-end ou de vacances"
    },
    {
      "code" : "26",
      "display" : "Analyses médicales biologiques"
    },
    {
      "code" : "28",
      "display" : "Consultations dentaires et soins dentaires"
    },
    {
      "code" : "30",
      "display" : "Stockage d'organes et de produits humains"
    },
    {
      "code" : "31",
      "display" : "Transport de malades"
    },
    {
      "code" : "32",
      "display" : "Radiologie (radiodiagnostic et radiothérapie), imagerie médicale"
    },
    {
      "code" : "33",
      "display" : "Recherche"
    },
    {
      "code" : "34",
      "display" : "Enseignement"
    },
    {
      "code" : "37",
      "display" : "Accueil et prise en charge en appartement thérapeutique psychiatrique"
    },
    {
      "code" : "38",
      "display" : "Accueil et prise en charge en centre de postcure psychiatrique"
    },
    {
      "code" : "39",
      "display" : "Accueil et prise en charge en centre de crise psychiatrique"
    },
    {
      "code" : "40",
      "display" : "Commerce de détail des biens à usage médical"
    },
    {
      "code" : "41",
      "display" : "Commerce en gros de produits à usage médical ou vétérinaire"
    },
    {
      "code" : "97",
      "display" : "Activité non dénommée ailleurs"
    }
  ]
}

```
