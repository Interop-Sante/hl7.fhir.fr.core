# FR Core CodeSystem v2-3307 - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem v2-3307**

## CodeSystem: FR Core CodeSystem v2-3307 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307 | *Version*:2.2.0-ballot |
| Draft as of 2025-12-05 | *Computable Name*:FRCoreCodeSystemv2_3307 |

 
HL7 v2 - Table 3307 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationType](ValueSet-fr-core-vs-organization-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-v2-3307",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemv2_3307",
  "title" : "FR Core CodeSystem v2-3307",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T09:27:14+00:00",
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
  "description" : "HL7 v2 - Table 3307",
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
