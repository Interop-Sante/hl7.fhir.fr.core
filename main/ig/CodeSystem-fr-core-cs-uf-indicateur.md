# FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle**

## CodeSystem: FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-02-23 | *Computable Name*:FRCoreCodeSystemUFIndicateur |

 
Système de codage permettant de définir les indicateurs d’une unité fonctionnelle. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationUFIndicateur](ValueSet-fr-core-vs-organization-uf-indicateur.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-uf-indicateur",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemUFIndicateur",
  "title" : "FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-02-23T12:56:47+00:00",
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
  "description" : "Système de codage permettant de définir les indicateurs d'une unité fonctionnelle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "HEB",
    "display" : "Hébergement",
    "definition" : "Hébergement"
  },
  {
    "code" : "SOIN",
    "display" : "Soin",
    "definition" : "Soin"
  },
  {
    "code" : "ADMIN",
    "display" : "Administrative",
    "definition" : "Administrative"
  },
  {
    "code" : "MED",
    "display" : "Médicale",
    "definition" : "Médicale"
  },
  {
    "code" : "TECH",
    "display" : "Technique",
    "definition" : "Technique"
  },
  {
    "code" : "MEDICOTECH",
    "display" : "Médico technique (radio, scanner, ...)",
    "definition" : "Médico technique (radio, scanner, ...)"
  },
  {
    "code" : "MAG",
    "display" : "Magasin",
    "definition" : "Magasin"
  }]
}

```
