# FR Core CodeSystem Location Identifier Type - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Location Identifier Type**

## CodeSystem: FR Core CodeSystem Location Identifier Type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type | *Version*:2.2.0-ballot |
| Draft as of 2026-01-29 | *Computable Name*:FRCoreCodeSystemLocationIdentifierType |

 
Location identifier type 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-identifier-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemLocationIdentifierType",
  "title" : "FR Core CodeSystem Location Identifier Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-29T08:32:45+00:00",
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
  "description" : "Location identifier type",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "INTRN",
      "display" : "Identifiant interne",
      "definition" : "Identifiant interne"
    },
    {
      "code" : "EXTRN",
      "display" : "Identifiant externe",
      "definition" : "Identifiant externe"
    },
    {
      "code" : "GLBL",
      "display" : "Identifiant global",
      "definition" : "Identifiant global"
    },
    {
      "code" : "IDNST",
      "display" : "Identification nationale de structure définie par l'ANS dans le CI-SIS",
      "definition" : "Identification nationale de structure définie par l'ANS dans le CI-SIS"
    }
  ]
}

```
