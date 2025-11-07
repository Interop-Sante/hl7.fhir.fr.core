# FR Core CodeSystem v2-0203 - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem v2-0203**

## CodeSystem: FR Core CodeSystem v2-0203 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203 | *Version*:2.2.0-ballot |
| Active as of 2025-11-07 | *Computable Name*:FRCoreCodeSystemv2_0203 |

 
HL7 v2 - Identifier type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationIdentifierType](ValueSet-fr-core-vs-organization-identifier-type.md)
* [FRCoreValueSetPatientIdentifierType](ValueSet-fr-core-vs-patient-identifier-type.md)
* [FRCoreValueSetPractitionerIdentifierType](ValueSet-fr-core-vs-practitioner-identifier-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-v2-0203",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemv2_0203",
  "title" : "FR Core CodeSystem v2-0203",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-07T16:50:39+00:00",
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
  "description" : "HL7 v2 - Identifier type",
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
      "code" : "ADELI",
      "display" : "N° ADELI",
      "definition" : "N° ADELI"
    },
    {
      "code" : "RPPS",
      "display" : "N° RPPS",
      "definition" : "N° RPPS"
    },
    {
      "code" : "IDNPS",
      "display" : "Identifiant National de Professionnel de Santé",
      "definition" : "Identifiant National de Professionnel de Santé"
    },
    {
      "code" : "NNFRA",
      "display" : "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code",
      "definition" : "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code"
    },
    {
      "code" : "NDP",
      "display" : "Identifiant du patient au Dossier Pharmaceutique",
      "definition" : "Identifiant du patient au Dossier Pharmaceutique"
    },
    {
      "code" : "INS-C",
      "display" : "Identifiant National de Santé Calculé",
      "definition" : "Identifiant National de Santé Calculé"
    },
    {
      "code" : "INS-NIA",
      "display" : "NIR temporaire",
      "definition" : "NIR temporaire"
    },
    {
      "code" : "INS-NIR",
      "display" : "NIR définitif",
      "definition" : "NIR définitif"
    },
    {
      "code" : "INS-NIR-TEST",
      "display" : "NIR TEST",
      "definition" : "NIR TEST"
    },
    {
      "code" : "INS-NIR-DEMO",
      "display" : "NIR DEMO",
      "definition" : "NIR DEMO"
    },
    {
      "code" : "FINEJ",
      "display" : "FINESS d'entité juridique",
      "definition" : "FINESS d'entité juridique"
    },
    {
      "code" : "FINEG",
      "display" : "FINESS d'entité géographique",
      "definition" : "FINESS d'entité géographique"
    },
    {
      "code" : "SIREN",
      "display" : "Identification de l'organisation au SIREN",
      "definition" : "Identification de l'organisation au SIREN"
    },
    {
      "code" : "SIRET",
      "display" : "Identification de l'organisation au SIRET",
      "definition" : "Identification de l'organisation au SIRET"
    },
    {
      "code" : "IDNST",
      "display" : "Identification nationale de structure définie par l’ANS dans le CI_SIS",
      "definition" : "Identification nationale de structure définie par l’ANS dans le CI_SIS"
    },
    {
      "code" : "INTRN",
      "display" : "Identifiant interne",
      "definition" : "Identifiant interne"
    },
    {
      "code" : "EXTRN",
      "display" : "Identifiant externe",
      "definition" : "Identifiant externe"
    }
  ]
}

```
