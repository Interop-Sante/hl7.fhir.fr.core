# FR Core CodeSystem Codes Tarifs - nomenclature TNJP - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Codes Tarifs - nomenclature TNJP**

## CodeSystem: FR Core CodeSystem Codes Tarifs - nomenclature TNJP 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-03-08 | *Computable Name*:FRCoreCodeSystemCodeTarifTNJP |

 
La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationCodeTarifTNJP](ValueSet-fr-core-vs-oragnization-code-tarif-tnjp.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-code-tarif-tnjp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemCodeTarifTNJP",
  "title" : "FR Core CodeSystem Codes Tarifs - nomenclature TNJP",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-08T19:18:35+00:00",
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
  "description" : "La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 43,
  "concept" : [{
    "code" : "03",
    "display" : "Médecine UM gériatrie, addictologie, douleurs chroniques-HC",
    "definition" : "Médecine UM gériatrie, addictologie, douleurs chroniques-HC"
  },
  {
    "code" : "04",
    "display" : "Médecine UM gériatrie, addictologie, douleurs chroniques-ambu",
    "definition" : "Médecine UM gériatrie, addictologie, douleurs chroniques-ambu"
  },
  {
    "code" : "11",
    "display" : "Médecine autres UM-HC",
    "definition" : "Médecine autres UM-HC"
  },
  {
    "code" : "50",
    "display" : "Médecine autres UM-ambu",
    "definition" : "Médecine autres UM-ambu"
  },
  {
    "code" : "48",
    "display" : "Médecine - GHS intermédiaire",
    "definition" : "Médecine - GHS intermédiaire"
  },
  {
    "code" : "45",
    "display" : "Médecine - Administration des produits de la réserve hospitalière",
    "definition" : "Médecine - Administration des produits de la réserve hospitalière"
  },
  {
    "code" : "20",
    "display" : "Spécialités couteuses",
    "definition" : "Spécialités couteuses"
  },
  {
    "code" : "26",
    "display" : "Spé très couteuses - REA",
    "definition" : "Spé très couteuses - REA"
  },
  {
    "code" : "12",
    "display" : "Chirurgie - HC",
    "definition" : "Chirurgie - HC"
  },
  {
    "code" : "90",
    "display" : "Chirurgie -ambu",
    "definition" : "Chirurgie -ambu"
  },
  {
    "code" : "23",
    "display" : "Obstétrique - HC",
    "definition" : "Obstétrique - HC"
  },
  {
    "code" : "24",
    "display" : "Obstétrique-ambu",
    "definition" : "Obstétrique-ambu"
  },
  {
    "code" : "25",
    "display" : "Nouveaux Nés - HC",
    "definition" : "Nouveaux Nés - HC"
  },
  {
    "code" : "53",
    "display" : "Séance chimiothérapie",
    "definition" : "Séance chimiothérapie"
  },
  {
    "code" : "52",
    "display" : "Séance dialyse",
    "definition" : "Séance dialyse"
  },
  {
    "code" : "49",
    "display" : "Séance de protonthérapie",
    "definition" : "Séance de protonthérapie"
  },
  {
    "code" : "51",
    "display" : "Séances Radiot Hte Precision : stéréotaxie, Irradiation corporelle totale, autres techniques spéciales, RCMI",
    "definition" : "Séances Radiot Hte Precision : stéréotaxie, Irradiation corporelle totale, autres techniques spéciales, RCMI"
  },
  {
    "code" : "27",
    "display" : "Autres séances",
    "definition" : "Autres séances"
  },
  {
    "code" : "70",
    "display" : "Hospitalisation à domicile (cas général)",
    "definition" : "Hospitalisation à domicile (cas général)"
  },
  {
    "code" : "13",
    "display" : "Hospitalisation complète de + de 18 ans",
    "definition" : "Hospitalisation complète de + de 18 ans"
  },
  {
    "code" : "54",
    "display" : "Hospitalisation partielle de + de 18 ans",
    "definition" : "Hospitalisation partielle de + de 18 ans"
  },
  {
    "code" : "14",
    "display" : "Hospitalisation complète de - de 18 ans",
    "definition" : "Hospitalisation complète de - de 18 ans"
  },
  {
    "code" : "55",
    "display" : "Hospitalisation partielle de - de 18 ans",
    "definition" : "Hospitalisation partielle de - de 18 ans"
  },
  {
    "code" : "57",
    "display" : "Centre de Crise de + de 18 ans",
    "definition" : "Centre de Crise de + de 18 ans"
  },
  {
    "code" : "58",
    "display" : "Centre de Crise de - de 18 ans",
    "definition" : "Centre de Crise de - de 18 ans"
  },
  {
    "code" : "91",
    "display" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HC",
    "definition" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HC"
  },
  {
    "code" : "92",
    "display" : "NEUROLOGIE - HC",
    "definition" : "NEUROLOGIE - HC"
  },
  {
    "code" : "93",
    "display" : "CARDIOLOGIE - HC",
    "definition" : "CARDIOLOGIE - HC"
  },
  {
    "code" : "94",
    "display" : "LOCOMOTEUR - HC",
    "definition" : "LOCOMOTEUR - HC"
  },
  {
    "code" : "95",
    "display" : "GERIATRIE - HC",
    "definition" : "GERIATRIE - HC"
  },
  {
    "code" : "96",
    "display" : "DIGESTIF - HC",
    "definition" : "DIGESTIF - HC"
  },
  {
    "code" : "97",
    "display" : "RESPIRATOIRE - HC",
    "definition" : "RESPIRATOIRE - HC"
  },
  {
    "code" : "87",
    "display" : "ADDICTION - HC",
    "definition" : "ADDICTION - HC"
  },
  {
    "code" : "88",
    "display" : "POLYVALENT - HC",
    "definition" : "POLYVALENT - HC"
  },
  {
    "code" : "31",
    "display" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HP",
    "definition" : "PEDIATRIE- BRULES - ONCOHEMATOLOGIE - HP"
  },
  {
    "code" : "32",
    "display" : "NEUROLOGIE - HP",
    "definition" : "NEUROLOGIE - HP"
  },
  {
    "code" : "33",
    "display" : "CARDIOLOGIE - HP",
    "definition" : "CARDIOLOGIE - HP"
  },
  {
    "code" : "34",
    "display" : "LOCOMOTEUR - HP",
    "definition" : "LOCOMOTEUR - HP"
  },
  {
    "code" : "35",
    "display" : "GERIATRIE - HP",
    "definition" : "GERIATRIE - HP"
  },
  {
    "code" : "36",
    "display" : "DIGESTIF - HP",
    "definition" : "DIGESTIF - HP"
  },
  {
    "code" : "37",
    "display" : "RESPIRATOIRE - HP",
    "definition" : "RESPIRATOIRE - HP"
  },
  {
    "code" : "38",
    "display" : "ADDICTION - HP",
    "definition" : "ADDICTION - HP"
  },
  {
    "code" : "39",
    "display" : "POLYVALENT - HP",
    "definition" : "POLYVALENT - HP"
  }]
}

```
