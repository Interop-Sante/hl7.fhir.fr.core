# FR Core Healthcare Service Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Healthcare Service Profile**

## Resource Profile: FR Core Healthcare Service Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service | *Version*:2.2.0-ballot |
| Active as of 2026-01-08 | *Computable Name*:FRCoreHealthcareServiceProfile |

 
Profile of the HealthcareService resource for France. This profile adds the element serviceTypeDuration to associate the service with the duration of this service. This profile needs to be revised, in particular to ensure consistency with the ROR project (https://interop.esante.gouv.fr/ig/fhir/ror). 
Profil de la ressource HealthcareService pour l’usage en France. Ce profil ajoute l’élément serviceTypeDuration de façon à associer le service avec la durée du service. Ce profil doit être retravaillé, pour être notamment mis en cohérence avec le projet ROR (https://interop.esante.gouv.fr/ig/fhir/ror). 

**Utilisations:**

* Référer à ce Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce Profil: [Service de cardiologie](HealthcareService-svc-cardiologie-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-healthcare-service)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-healthcare-service.csv), [Excel](StructureDefinition-fr-core-healthcare-service.xlsx), [Schematron](StructureDefinition-fr-core-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-healthcare-service",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreHealthcareServiceProfile",
  "title" : "FR Core Healthcare Service Profile",
  "status" : "active",
  "date" : "2026-01-08T13:26:00+00:00",
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
  "description" : "Profile of the HealthcareService resource for France. This profile adds the element serviceTypeDuration to associate the service with the duration of this service. This profile needs to be revised, in particular to ensure consistency with the ROR project (https://interop.esante.gouv.fr/ig/fhir/ror).\r\n\nProfil de la ressource HealthcareService pour l'usage en France. Ce profil ajoute l'élément serviceTypeDuration de façon à associer le service avec la durée du service. Ce profil doit être retravaillé, pour être notamment mis en cohérence avec le projet ROR (https://interop.esante.gouv.fr/ig/fhir/ror).",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
      },
      {
        "id" : "HealthcareService.meta.profile",
        "path" : "HealthcareService.meta.profile",
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
        "id" : "HealthcareService.meta.profile:fr-canonical",
        "path" : "HealthcareService.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0-ballot"
      },
      {
        "id" : "HealthcareService.extension",
        "path" : "HealthcareService.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "HealthcareService.extension:serviceTypeDuration",
        "path" : "HealthcareService.extension",
        "sliceName" : "serviceTypeDuration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.identifier.use",
        "path" : "HealthcareService.identifier.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        }
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "max" : "1"
      },
      {
        "id" : "HealthcareService.specialty",
        "path" : "HealthcareService.specialty",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0-ballot"
        }
      },
      {
        "id" : "HealthcareService.location",
        "path" : "HealthcareService.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.telecom",
        "path" : "HealthcareService.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.coverageArea",
        "path" : "HealthcareService.coverageArea",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot"
            ]
          }
        ]
      }
    ]
  }
}

```
