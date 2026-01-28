# FR Core CodeSystem Codes Tarifs - nomenclature TNJP - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Codes Tarifs - nomenclature TNJP**

## CodeSystem: FR Core CodeSystem Codes Tarifs - nomenclature TNJP 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemCodeTarifTNJP |

 
La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationCodeTarifTNJP](ValueSet-fr-core-vs-oragnization-code-tarif-tnjp.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-code-tarif-tnjp",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemCodeTarifTNJP",
  "title" : "FR Core CodeSystem Codes Tarifs - nomenclature TNJP",
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
  "description" : "La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations",
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
  "count" : 43,
  "concept" : [
    {
      "code" : "03",
      "display" : "Médecine UM gériatrie, addictologie, douleurs chroniques-HC"
    },
    {
      "code" : "04",
      "display" : "Médecine UM gériatrie, addictologie, douleurs chroniques-ambu"
    },
    {
      "code" : "11",
      "display" : "Médecine autres UM-HC"
    },
    {
      "code" : "50",
      "display" : "Médecine autres UM-ambu"
    },
    {
      "code" : "48",
      "display" : "Médecine - GHS intermédiaire"
    },
    {
      "code" : "45",
      "display" : "Médecine - Administration des produits de la réserve hospitalière"
    },
    {
      "code" : "20",
      "display" : "Spécialités couteuses"
    },
    {
      "code" : "26",
      "display" : "Spé très couteuses - REA"
    },
    {
      "code" : "12",
      "display" : "Chirurgie - HC"
    },
    {
      "code" : "90",
      "display" : "Chirurgie -ambu"
    },
    {
      "code" : "23",
      "display" : "Obstétrique - HC"
    },
    {
      "code" : "24",
      "display" : "Obstétrique-ambu"
    },
    {
      "code" : "25",
      "display" : "Nouveaux Nés - HC"
    },
    {
      "code" : "53",
      "display" : "Séance chimiothérapie"
    },
    {
      "code" : "52",
      "display" : "Séance dialyse"
    },
    {
      "code" : "49",
      "display" : "Séance de protonthérapie"
    },
    {
      "code" : "51",
      "display" : "Séances Radiot Hte Precision : stéréotaxie, Irradiation corporelle totale, autres techniques spéciales, RCMI"
    },
    {
      "code" : "27",
      "display" : "Autres séances"
    },
    {
      "code" : "70",
      "display" : "Hospitalisation à domicile (cas général)"
    },
    {
      "code" : "13",
      "display" : "Hospitalisation complète de + de 18 ans"
    },
    {
      "code" : "54",
      "display" : "Hospitalisation partielle de + de 18 ans"
    },
    {
      "code" : "14",
      "display" : "Hospitalisation complète de - de 18 ans"
    },
    {
      "code" : "55",
      "display" : "Hospitalisation partielle de - de 18 ans"
    },
    {
      "code" : "57",
      "display" : "Centre de Crise de + de 18 ans"
    },
    {
      "code" : "58",
      "display" : "Centre de Crise de - de 18 ans"
    },
    {
      "code" : "91",
      "display" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HC"
    },
    {
      "code" : "92",
      "display" : "NEUROLOGIE - HC"
    },
    {
      "code" : "93",
      "display" : "CARDIOLOGIE - HC"
    },
    {
      "code" : "94",
      "display" : "LOCOMOTEUR - HC"
    },
    {
      "code" : "95",
      "display" : "GERIATRIE - HC"
    },
    {
      "code" : "96",
      "display" : "DIGESTIF - HC"
    },
    {
      "code" : "97",
      "display" : "RESPIRATOIRE - HC"
    },
    {
      "code" : "87",
      "display" : "ADDICTION - HC"
    },
    {
      "code" : "88",
      "display" : "POLYVALENT - HC"
    },
    {
      "code" : "31",
      "display" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HP"
    },
    {
      "code" : "32",
      "display" : "NEUROLOGIE - HP"
    },
    {
      "code" : "33",
      "display" : "CARDIOLOGIE - HP"
    },
    {
      "code" : "34",
      "display" : "LOCOMOTEUR - HP"
    },
    {
      "code" : "35",
      "display" : "GERIATRIE - HP"
    },
    {
      "code" : "36",
      "display" : "DIGESTIF - HP"
    },
    {
      "code" : "37",
      "display" : "RESPIRATOIRE - HP"
    },
    {
      "code" : "38",
      "display" : "ADDICTION - HP"
    },
    {
      "code" : "39",
      "display" : "POLYVALENT - HP"
    }
  ]
}

```
