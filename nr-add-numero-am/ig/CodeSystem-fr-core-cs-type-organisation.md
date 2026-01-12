# FR Core CodeSystem Organization Type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Organization Type**

## CodeSystem: FR Core CodeSystem Organization Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-organisation | *Version*:2.2.0-ballot |
| Draft as of 2026-01-12 | *Computable Name*:FRCoreCodeSystemTypesOrganisations |

 
Organization type 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-type-organisation",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-organisation",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemTypesOrganisations",
  "title" : "FR Core CodeSystem Organization Type",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-12T09:29:04+00:00",
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
  "description" : "Organization type",
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
  "count" : 17,
  "concept" : [
    {
      "code" : "LEGAL-ENTITY",
      "display" : "Entité légale",
      "definition" : "Entité légale"
    },
    {
      "code" : "GHT",
      "display" : "Groupement hospitalier de territoire",
      "definition" : "Groupement hospitalier de territoire"
    },
    {
      "code" : "GEOGRAPHICAL-ENTITY",
      "display" : "Entité géographique",
      "definition" : "Entité géographique"
    },
    {
      "code" : "GROUP",
      "display" : "Groupe privé/hospitalier",
      "definition" : "Groupe privé/hospitalier"
    },
    {
      "code" : "HEBERGEMENT",
      "display" : "Hébergement",
      "definition" : "Hébergement"
    },
    {
      "code" : "SOIN",
      "display" : "Soin",
      "definition" : "Soin"
    },
    {
      "code" : "ADMINISTRATIF",
      "display" : "Administration",
      "definition" : "Administration"
    },
    {
      "code" : "MEDICAL",
      "display" : "Médical",
      "definition" : "Médical"
    },
    {
      "code" : "TECHNIQUE",
      "display" : "Technique",
      "definition" : "Technique"
    },
    {
      "code" : "MEDICOTEC",
      "display" : "medico technique (radio, scanner …)",
      "definition" : "medico technique (radio, scanner …)"
    },
    {
      "code" : "UF",
      "display" : "Unité fonctionnelle",
      "definition" : "Unité fonctionnelle"
    },
    {
      "code" : "SERVICE",
      "display" : "Service",
      "definition" : "Service"
    },
    {
      "code" : "UM",
      "display" : "Unité médicale",
      "definition" : "Unité médicale"
    },
    {
      "code" : "UAC",
      "display" : "Unité d'activité",
      "definition" : "Unité d'activité"
    },
    {
      "code" : "POLE",
      "display" : "Pôle",
      "definition" : "Pôle"
    },
    {
      "code" : "CENTRE-RESP",
      "display" : "Centre de responsabilité",
      "definition" : "Centre de responsabilité"
    },
    {
      "code" : "CENTRE-ACTIVITE",
      "display" : "Centre d'activité",
      "definition" : "Centre d'activité"
    }
  ]
}

```
