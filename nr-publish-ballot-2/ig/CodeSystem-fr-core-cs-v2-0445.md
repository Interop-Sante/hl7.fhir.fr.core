# FR Core CodeSystem v2-0445 - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem v2-0445**

## CodeSystem: FR Core CodeSystem v2-0445 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445 | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemv2_0445 |

 
HL7 v2 - Table 0445 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetIdentityReliabilityStatus](ValueSet-fr-core-vs-identity-reliability.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-v2-0445",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemv2_0445",
  "title" : "FR Core CodeSystem v2-0445",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-28T08:22:20+00:00",
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
  "description" : "HL7 v2 - Table 0445",
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
  "count" : 21,
  "concept" : [
    {
      "code" : "VIDE",
      "display" : "Identité non encore qualifiée",
      "definition" : "Identité non encore qualifiée"
    },
    {
      "code" : "PROV",
      "display" : "Identité provisoire",
      "definition" : "Identité provisoire"
    },
    {
      "code" : "VALI",
      "display" : "Identité validée",
      "definition" : "Identité validée"
    },
    {
      "code" : "DOUB",
      "display" : "Doublon",
      "definition" : "Doublon"
    },
    {
      "code" : "DESA",
      "display" : "Identité désactivée",
      "definition" : "Identité désactivée"
    },
    {
      "code" : "DPOT",
      "display" : "Doublon potentiel",
      "definition" : "Doublon potentiel"
    },
    {
      "code" : "DOUA",
      "display" : "Doublon avéré",
      "definition" : "Doublon avéré"
    },
    {
      "code" : "COLP",
      "display" : "Collision potentielle",
      "definition" : "Collision potentielle"
    },
    {
      "code" : "COLV",
      "display" : "Collision avérée",
      "definition" : "Collision avérée"
    },
    {
      "code" : "FILI",
      "display" : "Filiation",
      "definition" : "Filiation"
    },
    {
      "code" : "CACH",
      "display" : "Identité cachée",
      "definition" : "Identité cachée"
    },
    {
      "code" : "ANOM",
      "display" : "Anonyme",
      "definition" : "Anonyme"
    },
    {
      "code" : "IDVER",
      "display" : "Identité vérifiée par le patient",
      "definition" : "Identité vérifiée par le patient"
    },
    {
      "code" : "RECD",
      "display" : "Identité reçue d'un autre domaine",
      "definition" : "Identité reçue d'un autre domaine"
    },
    {
      "code" : "IDRA",
      "display" : "Identité rapprochée dans un autre domaine",
      "definition" : "Identité rapprochée dans un autre domaine"
    },
    {
      "code" : "USUR",
      "display" : "Identité usurpée",
      "definition" : "Identité usurpée"
    },
    {
      "code" : "HOMD",
      "display" : "Homonyme détecté",
      "definition" : "Homonyme détecté"
    },
    {
      "code" : "HOMA",
      "display" : "Homonyme avéré",
      "definition" : "Homonyme avéré"
    },
    {
      "code" : "INVA",
      "display" : "Identité invalidée",
      "definition" : "Identité invalidée"
    },
    {
      "code" : "FICT",
      "display" : "Identité fictive (Attribut d’identité « fictive »)",
      "definition" : "Identité fictive (Attribut d’identité « fictive »)"
    },
    {
      "code" : "DOUT",
      "display" : "Identité douteuse (Attribut d’identité « douteuse »)",
      "definition" : "Identité douteuse (Attribut d’identité « douteuse »)"
    }
  ]
}

```
