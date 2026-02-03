# FRCorePractitionerExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCorePractitionerExample**

## Example Practitioner: FRCorePractitionerExample

Dernière mise à jour : 2025-04-28 18:19:26+0200; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profil: [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md)

**identifier**: Identifiant National de Professionnel de Santé/810101201234 (utilisation : official, ), N° RPPS/10101201234 (utilisation : official, )

**active**: true

**name**: Leclerc Sophie

**telecom**: [sophie.leclerc@mssante.fr](mailto:sophie.leclerc@mssante.fr)

> **qualification****code**: Diplôme Etat français

> **qualification****code**: Civil



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "FRCorePractitionerExample",
  "meta" : {
    "lastUpdated" : "2025-04-28T18:19:26.335+02:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
    ]
  },
  "language" : "fr",
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNPS"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "810101201234"
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "RPPS"
          }
        ]
      },
      "system" : "https://rpps.esante.gouv.fr",
      "value" : "10101201234"
    }
  ],
  "active" : true,
  "name" : [
    {
      "text" : "Leclerc Sophie",
      "family" : "Leclerc",
      "given" : ["Sophie"],
      "prefix" : ["MME"],
      "suffix" : ["DR"]
    }
  ],
  "telecom" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
          "valueCoding" : {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie",
            "code" : "MSSANTE",
            "display" : "MSSANTE"
          }
        }
      ],
      "system" : "email",
      "value" : "sophie.leclerc@mssante.fr",
      "use" : "work"
    }
  ],
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome",
            "code" : "DE"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais",
            "code" : "DE11"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle",
            "code" : "C"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
            "code" : "70"
          }
        ]
      }
    }
  ]
}

```
