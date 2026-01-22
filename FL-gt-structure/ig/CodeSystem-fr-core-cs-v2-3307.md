# FR Core CodeSystem v2-3307 - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem v2-3307**

## CodeSystem: FR Core CodeSystem v2-3307 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307 | *Version*:2.2.0-ballot |
| Draft as of 2026-01-22 | *Computable Name*:FRCoreCodeSystemv2_3307 |

 
HL7 v2 - Table 3307 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationEtablissementType](ValueSet-fr-core-vs-organization-etablissement-type.md)
* [FRCoreValueSetOrganizationType](ValueSet-fr-core-vs-organization-type.md)
* [FRCoreValueSetOrganizationUACType](ValueSet-fr-core-vs-organization-uac-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-v2-3307",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemv2_3307",
  "title" : "FR Core CodeSystem v2-3307",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-22T11:51:24+00:00",
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
  "count" : 14,
  "concept" : [
    {
      "code" : "GHT",
      "display" : "Groupement hospitalier de territoire"
    },
    {
      "code" : "LEGAL-ENTITY",
      "display" : "Entité légale"
    },
    {
      "code" : "GEOGRAPHICAL-ENTITY",
      "display" : "Entité géographique"
    },
    {
      "code" : "GROUP",
      "display" : "Groupe privé/hospitalier"
    },
    {
      "code" : "STRUCT-INTERNE",
      "display" : "Structure interne"
    },
    {
      "code" : "SECTEUR",
      "display" : "Secteur"
    },
    {
      "code" : "DEPARTEMENT",
      "display" : "Département"
    },
    {
      "code" : "SERVICE",
      "display" : "Service"
    },
    {
      "code" : "UM",
      "display" : "Unité médicale"
    },
    {
      "code" : "UAC",
      "display" : "Unité d'activité"
    },
    {
      "code" : "POLE",
      "display" : "Pôle"
    },
    {
      "code" : "CENTRE-RESP",
      "display" : "Centre de responsabilité"
    },
    {
      "code" : "CENTRE-ACTIVITE",
      "display" : "Centre d'activité"
    },
    {
      "code" : "UF",
      "display" : "Unité fonctionnelle"
    }
  ]
}

```
