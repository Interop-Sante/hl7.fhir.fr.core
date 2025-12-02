# FR Core Schedule Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Schedule Profile**

## Resource Profile: FR Core Schedule Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreScheduleProfile |

 
Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule 
Profil de la ressource Schedule pour l’usage en France. Ce profil redéfinit l’élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. 

**Utilisations:**

* Référer à ce Profil: [FR Core Slot Profile](StructureDefinition-fr-core-slot.md)
* Exemples pour ce Profil: [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-schedule)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-schedule.csv), [Excel](StructureDefinition-fr-core-schedule.xlsx), [Schematron](StructureDefinition-fr-core-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-schedule",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreScheduleProfile",
  "title" : "FR Core Schedule Profile",
  "status" : "active",
  "date" : "2025-12-02T20:15:58+00:00",
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
  "description" : "Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule\r\n\nProfil de la ressource Schedule pour l'usage en France. Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation.",
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
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Schedule",
        "path" : "Schedule"
      },
      {
        "id" : "Schedule.meta.profile",
        "path" : "Schedule.meta.profile",
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
        "id" : "Schedule.meta.profile:fr-canonical",
        "path" : "Schedule.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule"
      },
      {
        "id" : "Schedule.extension",
        "path" : "Schedule.extension",
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
        "id" : "Schedule.extension:serviceTypeDuration",
        "path" : "Schedule.extension",
        "sliceName" : "serviceTypeDuration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
            ]
          }
        ]
      },
      {
        "id" : "Schedule.extension:availabilityTime",
        "path" : "Schedule.extension",
        "sliceName" : "availabilityTime",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time"
            ]
          }
        ]
      },
      {
        "id" : "Schedule.serviceCategory",
        "path" : "Schedule.serviceCategory",
        "max" : "1"
      },
      {
        "id" : "Schedule.serviceType",
        "path" : "Schedule.serviceType",
        "max" : "0"
      },
      {
        "id" : "Schedule.specialty",
        "path" : "Schedule.specialty",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty"
        }
      },
      {
        "id" : "Schedule.actor",
        "path" : "Schedule.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Device",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          }
        ]
      }
    ]
  }
}

```
