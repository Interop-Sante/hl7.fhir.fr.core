# FR Core CodeSystem Mode Validation Identite - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Mode Validation Identite**

## CodeSystem: FR Core CodeSystem Mode Validation Identite 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-method-collection | *Version*:2.2.0-ballot |
| Active as of 2025-11-06 | *Computable Name*:FRCoreCodeSystemMethodCollection |

 
Méthode de collection de l’identité 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetIdentityMethodCollection](ValueSet-fr-core-vs-identity-method-collection.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-method-collection",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-method-collection",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemMethodCollection",
  "title" : "FR Core CodeSystem Mode Validation Identite",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-06T10:11:54+00:00",
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
  "description" : "Méthode de collection de l'identité",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "SM",
      "display" : "Saisie manuelle",
      "definition" : "Saisie manuelle"
    },
    {
      "code" : "CV",
      "display" : "Carte vitale",
      "definition" : "Carte vitale"
    },
    {
      "code" : "INSI",
      "display" : "Téléservice INSI",
      "definition" : "Téléservice INSI"
    },
    {
      "code" : "CB",
      "display" : "Code à barre",
      "definition" : "Code à barre"
    },
    {
      "code" : "RFID",
      "display" : "Puce RFID",
      "definition" : "Puce RFID"
    }
  ]
}

```
