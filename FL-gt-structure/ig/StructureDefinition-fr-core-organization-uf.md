# FR Core Organization UF Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization UF Profile**

## Resource Profile: FR Core Organization UF Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf | *Version*:2.2.0-ballot |
| Active as of 2026-01-22 | *Computable Name*:FRCoreOrganizationUFProfile |

 
Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement. 

### Usage

Une Unité Fonctionnelle (UF) peut matérialiser une organisation prenant en charge ou non des patients. Elle peut également indiquer une responsabilité médicale. L’association d’une UF avec un responsable peut alors porter cette notion de responsabilité vis-à-vis d’un patient.

Ainsi il existe plusieurs types d’UF :

* UF d’hébergement : Une UF d’hébergement sert à affecter la localisation d’un patient dans la structure de soins. Une UF d’hébergement dispose de lits : pour accueillir physiquement le patient.
* UF de responsabilité médicale : Une UF de ce type sert à définir la responsabilité médicale lors de la prise en charge du patient. Il est possible qu’un patient soit localisé (hébergé) dans une UF de localisation qui n’a pas de rapport avec les soins dont il bénéficie pour des raisons de place dans une unité. Par ailleurs, une UF peut être de type hébergement et de type responsabilité médicale.
* UF administrative : Ce type d’UF permet de définir une organisation qui regroupe des activités non cliniques.
* UF de magasin : Une UF de type magasin sert à la gestion de la logistique.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :

* la catégorisation en champ d’activité
* la définition du type d’activité
* la définition de la discipline d’équipement
* les indicateurs pour définir le role ou les roles de l’UF
* la possibilité de définir le positionnement de l’UF par rapport aux actes demandés/réalisés

L’unité fonctionnelle est définie par plusieurs caractéristiques permettant de la catégoriser :

| | | | |
| :--- | :--- | :--- | :--- |
| Champ d’activité | **✘** | Permet de classer de façon macro une UF : MCO, HAD, PSY | [fr-core-vs-organization-champ-activite](ValueSet-fr-core-vs-organization-champ-activite.md) |
| Type d’activité | **✔** | Permet de définir une catégorie de haut niveau d’une UF. Elle permet par exemple d’indiquer si l’UF propose une hospitalisation complète ou partielle. | [fr-core-vs-organization-type-activite](ValueSet-fr-core-vs-organtization-type-activite.md) |
| Discipline d’équipement | **✔** | Permet définir la spécialité médicale ou médico-technique d’une UF, par exemple Neurochirurgie pour une activé médicale ou Radiologie vasculaire pour une UF médico-techique | [fr-core-vs-organization-discipline-equipement](ValueSet-fr-core-vs-organization-discipline-equipement.md) |
| Indicateurs | **✔** | Permet de définir si l’UF est de type Hébergement, Médicale, etc. | [fr-core-vs-organization-uf-indicateur](ValueSet-fr-core-vs-organization-uf-indicateur.md) |
| UF Externe | **✘** | Permet de définir si une UF est externe à l’organisation. Cette notion est utilisée pour identifier des données en provenance ou à destination d’organisation tierce, comme la délegation de prestation à une structure extérieure | [fr-core-organization-uf-externe](StructureDefinition-fr-core-organization-uf-externe.md) |
| Demandeuse d’acte | **✘** | Permet d’indiquer si l’UF est autorisée à demander des actes à une autre UF | [fr-core-organization-demandeuse-acte](StructureDefinition-fr-core-organization-demandeuse-acte.md) |
| Exécutante d’acte | **✘** | Permet d’indiquer si l’UF peut réaliser des actes pour une UF demandeuse | [fr-core-organization-executante-acte](StructureDefinition-fr-core-organization-executante-acte.md) |

**Exemples d’UF**

| | | |
| :--- | :--- | :--- |
| Nom | Chirurgie pédiatrique | IRM |
| Champ d’activité | `MCO` | `MCO` |
| Type d’activité | `03 : Hospitalisation complète` | `32 : Radiologie (radiodiagnostic et radiothérapie), imagerie médicale` |
| Discipline d’équipement | `138 : Chirurgie infantile indifférenciée` | `753 : Imagerie par résonance magnétique (IRM)` |
| Indicateurs | `HEB`,`MED` | `MED` |
| UF Externe | `N` | `N` |
| Demandeuse d’acte | `O` | `N` |
| Exécutante d’acte | `O` | `O` |

**Utilisations:**

* Référer à ce Profil: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)
* Exemples pour ce Profil: [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md), [UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md) and [UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uf)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-uf.csv), [Excel](StructureDefinition-fr-core-organization-uf.xlsx), [Schematron](StructureDefinition-fr-core-organization-uf.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uf",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationUFProfile",
  "title" : "FR Core Organization UF Profile",
  "status" : "active",
  "date" : "2026-01-22T13:05:19+00:00",
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
  "description" : "Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement.",
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
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.extension:discplineEquipement",
        "path" : "Organization.extension",
        "sliceName" : "discplineEquipement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-equipement"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:typeActivite",
        "path" : "Organization.extension",
        "sliceName" : "typeActivite",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-type-activite"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:champActivite",
        "path" : "Organization.extension",
        "sliceName" : "champActivite",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:placeHebergement",
        "path" : "Organization.extension",
        "sliceName" : "placeHebergement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:externe",
        "path" : "Organization.extension",
        "sliceName" : "externe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:indicateur",
        "path" : "Organization.extension",
        "sliceName" : "indicateur",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:demandeuseActe",
        "path" : "Organization.extension",
        "sliceName" : "demandeuseActe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-demandeuse-acte"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:executanteActe",
        "path" : "Organization.extension",
        "sliceName" : "executanteActe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executante-acte"
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
              "code" : "UF"
            }
          ]
        }
      }
    ]
  }
}

```
