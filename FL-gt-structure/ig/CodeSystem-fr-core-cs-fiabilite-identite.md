# FR Core CodeSystem Fiabilité Identité - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Fiabilité Identité**

## CodeSystem: FR Core CodeSystem Fiabilité Identité 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-fiabilite-identite | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreCodeSystemReliabilityIdentity |
| *Other Identifiers:*http://terminology.hl7.org/CodeSystem/v2-tables#urn:oid:2.16.840.1.113883.12.445 | |

 
French Identity reliabilty codes 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-fiabilite-identite",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-fiabilite-identite",
  "identifier" : [
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-tables",
      "value" : "urn:oid:2.16.840.1.113883.12.445"
    }
  ],
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemReliabilityIdentity",
  "title" : "FR Core CodeSystem Fiabilité Identité",
  "status" : "active",
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
  "description" : "French Identity reliabilty codes",
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
      "code" : "INVA",
      "display" : "Identité invalidée",
      "definition" : "Identité invalidée"
    },
    {
      "code" : "HOMA",
      "display" : "Homonyme avéré (attribut d'identité homonyme)",
      "definition" : "Homonyme avéré (attribut d'identité homonyme)"
    },
    {
      "code" : "FICT",
      "display" : "Identité fictive (attribut d'identité fictive)",
      "definition" : "Identité fictive (attribut d'identité fictive)"
    },
    {
      "code" : "DOUT",
      "display" : "Identité douteuse (attribut d'identité douteuse)",
      "definition" : "Identité douteuse (attribut d'identité douteuse)"
    }
  ]
}

```
