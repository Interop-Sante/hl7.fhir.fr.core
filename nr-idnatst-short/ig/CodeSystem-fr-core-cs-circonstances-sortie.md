# FR Core CodeSystem Circonstances Sortie - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Circonstances Sortie**

## CodeSystem: FR Core CodeSystem Circonstances Sortie 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie | *Version*:2.2.0-ballot |
| Draft as of 2026-01-12 | *Computable Name*:FRCoreCodeSystemCirconstancesSortie |

 
Discharge Disposition 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetEncounterDischargeDisposition](ValueSet-fr-core-vs-encounter-discharge-disposition.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-circonstances-sortie",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemCirconstancesSortie",
  "title" : "FR Core CodeSystem Circonstances Sortie",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-12T09:10:53+00:00",
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
  "description" : "Discharge Disposition",
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
  "count" : 14,
  "concept" : [
    {
      "code" : "2",
      "display" : "Mesure disciplinaire",
      "definition" : "Mesure disciplinaire"
    },
    {
      "code" : "3",
      "display" : "Décision médicale",
      "definition" : "Décision médicale"
    },
    {
      "code" : "4",
      "display" : "Contre avis médical",
      "definition" : "Contre avis médical"
    },
    {
      "code" : "5",
      "display" : "en attente d'examen",
      "definition" : "en attente d'examen"
    },
    {
      "code" : "6",
      "display" : "Convenance personnelle",
      "definition" : "Convenance personnelle"
    },
    {
      "code" : "R",
      "display" : "Essai (contexte psychiatrique)",
      "definition" : "Essai (contexte psychiatrique)"
    },
    {
      "code" : "E",
      "display" : "Evasion",
      "definition" : "Evasion"
    },
    {
      "code" : "F",
      "display" : "Fugue",
      "definition" : "Fugue"
    },
    {
      "code" : "A",
      "display" : "Absence ( < 12h)",
      "definition" : "Absence ( < 12h)"
    },
    {
      "code" : "P",
      "display" : "Permission ( <72h)",
      "definition" : "Permission ( <72h)"
    },
    {
      "code" : "S",
      "display" : "Sortie avec programme de soins",
      "definition" : "Sortie avec programme de soins"
    },
    {
      "code" : "B",
      "display" : "Départ vers MCO",
      "definition" : "Départ vers MCO"
    },
    {
      "code" : "REO",
      "display" : "Réorientation",
      "definition" : "Réorientation"
    },
    {
      "code" : "PSA",
      "display" : "Patient parti sans attendre les soins",
      "definition" : "Patient parti sans attendre les soins"
    }
  ]
}

```
