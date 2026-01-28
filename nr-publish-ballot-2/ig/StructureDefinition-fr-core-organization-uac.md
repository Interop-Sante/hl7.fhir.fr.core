# FR Core Organization UAC Profile - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization UAC Profile**

## Resource Profile: FR Core Organization UAC Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-28 | *Computable Name*:FRCoreOrganizationUACProfile |

 
Ce profil permet de représenter les unités d’activité (UAC, parfois appelé PAC). L’UAC (Unité d’Activité) est le niveau élémentaire de recueil des activités en vue de la facturation. 

### Usage

L’[UAC](structure_entites.md#UAC) est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Elle ne sert qu’à la facturation du séjour. Elle permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :

* la possibilité de définir une discipline de prestation
* la possibilité d’ajouter un code tarif

**Utilisations:**

* Exemples pour ce Profil: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md) and [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uac)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-uac.csv), [Excel](StructureDefinition-fr-core-organization-uac.xlsx), [Schematron](StructureDefinition-fr-core-organization-uac.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uac",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreOrganizationUACProfile",
  "title" : "FR Core Organization UAC Profile",
  "status" : "active",
  "date" : "2026-01-28T13:01:34+00:00",
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
  "description" : "Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). L'UAC (Unité d'Activité) est le niveau élémentaire de recueil des activités en vue de la facturation.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot-2",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.extension:disciplinePrestation",
        "path" : "Organization.extension",
        "sliceName" : "disciplinePrestation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0-ballot-2"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:tarif",
        "path" : "Organization.extension",
        "sliceName" : "tarif",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0-ballot-2"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "fixedCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
              "code" : "UAC"
            }
          ]
        }
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf|2.2.0-ballot-2"
            ]
          }
        ]
      }
    ]
  }
}

```
