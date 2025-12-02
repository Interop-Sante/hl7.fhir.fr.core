# FR Core Organization Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Profile**

## Resource Profile: FR Core Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreOrganizationProfile |

 
Profil de la ressource Organization pour la France. Il s’agit du profil de base pour les organisations en France. 

### Usage

La ressource Organization est utilisée pour représenter une entité organisationnelle, partie de la structure de l’organisation de santé. En particulier, elle est adaptée pour représentée

* une structure interne
* un service
* un pôle d’activité
* un centre de responsabilité
* un centre d’activité
* un département

### Ajout du profil FR

Ce profil ajoute par rapport à la ressource du standard

* differents types d’identifiant utilisés en France
* la possibilité de définir les motifs de fermeture (`closureReason`) et d’ouverture (`openReason`) de l’organisation
* la possibilité de définir une période d’utilisation de l’organisation
* la possibilité de définir un nom court pour l’organisation
* la possibilité de définir une description pour l’organisation

**Utilisations:**

* Dérivé de ce Profil: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md), [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md) and [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)
* Référer à ce Profil: [FR Core Appointment Operator Extension](StructureDefinition-fr-core-appointment-operator.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md)...Show 12 more,[FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md),[FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md),[FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md),[FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md),[FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md),[FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md),[FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md),[FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md),[FR Core Organization Extension - Membre d'organisation](StructureDefinition-fr-core-organization-member.md),[FR Core Organization Profile](StructureDefinition-fr-core-organization.md),[FR Core Patient Profile](StructureDefinition-fr-core-patient.md)and[FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)
* Exemples pour ce Profil: [HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G](Organization-FRCoreOrganizationExample.md), [Depertement d'Endocrinologie](Organization-hopitaltest-dept-11003-endocrino.md), [Pole Medecines spécialisées](Organization-hopitaltest-pole-1150-med-spe.md), [Service Endocrino Diabeto](Organization-hopitaltest-service-11006-endocrino-diabo.md) and [Service Dietetique](Organization-hopitaltest-service-11007-dietetique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization.csv), [Excel](StructureDefinition-fr-core-organization.xlsx), [Schematron](StructureDefinition-fr-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationProfile",
  "title" : "FR Core Organization Profile",
  "status" : "active",
  "date" : "2025-12-02T20:49:48+00:00",
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
  "description" : "Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.meta.profile",
        "path" : "Organization.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.meta.profile:fr-canonical",
        "path" : "Organization.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "id" : "Organization.extension",
        "path" : "Organization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.extension:shortName",
        "path" : "Organization.extension",
        "sliceName" : "shortName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:description",
        "path" : "Organization.extension",
        "sliceName" : "description",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:usePeriod",
        "path" : "Organization.extension",
        "sliceName" : "usePeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:openReason",
        "path" : "Organization.extension",
        "sliceName" : "openReason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/note"]
          }
        ]
      },
      {
        "id" : "Organization.extension:closureReason",
        "path" : "Organization.extension",
        "sliceName" : "closureReason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/note"]
          }
        ]
      },
      {
        "id" : "Organization.extension:members",
        "path" : "Organization.extension",
        "sliceName" : "members",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member"
            ]
          }
        ]
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type"
        }
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point"
            ]
          }
        ]
      },
      {
        "id" : "Organization.address",
        "path" : "Organization.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address"
            ]
          }
        ]
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
            ]
          }
        ]
      },
      {
        "id" : "Organization.partOf.type",
        "path" : "Organization.partOf.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type"
        }
      },
      {
        "id" : "Organization.contact.telecom",
        "path" : "Organization.contact.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point"
            ]
          }
        ]
      },
      {
        "id" : "Organization.contact.address",
        "path" : "Organization.contact.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address"
            ]
          }
        ]
      }
    ]
  }
}

```
