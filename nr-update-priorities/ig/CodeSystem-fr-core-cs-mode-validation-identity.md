# FR Core CodeSystem Mode Validation Identite - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Mode Validation Identite**

## CodeSystem: FR Core CodeSystem Mode Validation Identite 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreCodeSystemModeValidationIdentite |

 
Mode de validation de l’identité 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetModeValidationIdentity](ValueSet-fr-core-vs-mode-validation-identity.md)
* [FRCoreValueSetModeValidationIdentityINS](ValueSet-fr-core-vs-mode-validation-identity-ins.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-mode-validation-identity",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemModeValidationIdentite",
  "title" : "FR Core CodeSystem Mode Validation Identite",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-29T10:22:56+00:00",
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
  "description" : "Mode de validation de l'identité",
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
  "count" : 13,
  "concept" : [
    {
      "code" : "AN",
      "display" : "Extrait d'acte de naissance",
      "definition" : "Extrait d'acte de naissance",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Extrait d'acte de naissance"
        }
      ]
    },
    {
      "code" : "CC",
      "display" : "Carnet de circulation",
      "definition" : "Carnet de circulation",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Carnet de circulation"
        }
      ]
    },
    {
      "code" : "CE",
      "display" : "Carte Européenne",
      "definition" : "Carte Européenne",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Carte Européenne"
        }
      ]
    },
    {
      "code" : "CM",
      "display" : "Carte militaire",
      "definition" : "Carte militaire",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Carte militaire"
        }
      ]
    },
    {
      "code" : "CN",
      "display" : "Carte nationale d'identité",
      "definition" : "Carte nationale d'identité",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Carte nationale d'identité"
        }
      ]
    },
    {
      "code" : "CS",
      "display" : "Carte de séjour",
      "definition" : "Carte de séjour",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Carte de séjour"
        }
      ]
    },
    {
      "code" : "LE",
      "display" : "Livret de famille",
      "definition" : "Livret de famille",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Livret de famille"
        }
      ]
    },
    {
      "code" : "PA",
      "display" : "Passeport",
      "definition" : "Passeport",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Passeport"
        }
      ]
    },
    {
      "code" : "PC",
      "display" : "Permis de conduire",
      "definition" : "Permis de conduire",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Permis de conduire"
        }
      ]
    },
    {
      "code" : "TC",
      "display" : "Tiers de confiance",
      "definition" : "Tiers de confiance",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Tiers de confiance"
        }
      ]
    },
    {
      "code" : "DC",
      "display" : "Document de Circulation pour étranger mineur",
      "definition" : "Document de Circulation pour étranger mineur",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Document de Circulation pour étranger mineur"
        }
      ]
    },
    {
      "code" : "AC",
      "display" : "Acte de naissance + Carte vitale avec photo",
      "definition" : "Acte de naissance + Carte vitale avec photo",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Acte de naissance + Carte vitale avec photo"
        }
      ]
    },
    {
      "code" : "IE",
      "display" : "Identification électronique EIDAS",
      "definition" : "Identification électronique EIDAS",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Identification électronique EIDAS"
        }
      ]
    }
  ]
}

```
