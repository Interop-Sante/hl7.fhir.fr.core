# FR Core Service Type Duration Extension - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Service Type Duration Extension**

## Extension: FR Core Service Type Duration Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-29 | *Computable Name*:FRCoreServiceTypeDurationExtension |

Cette extension française permet d’associer le type de service avec la durée de ce service.

This French extension allows to associate the type of service with the duration of this service

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce Extension: [Service de cardiologie](HealthcareService-svc-cardiologie-1.md) and [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-service-type-duration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-service-type-duration.csv), [Excel](StructureDefinition-fr-core-service-type-duration.xlsx), [Schematron](StructureDefinition-fr-core-service-type-duration.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-service-type-duration",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreServiceTypeDurationExtension",
  "title" : "FR Core Service Type Duration Extension",
  "status" : "active",
  "date" : "2026-01-29T08:41:18+00:00",
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
  "description" : "Cette extension française permet d'associer le type de service avec la durée de ce service.\n\rThis French extension allows to associate the type of service with the duration of this service",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "PractitionerRole"
    },
    {
      "type" : "element",
      "expression" : "HealthcareService"
    },
    {
      "type" : "element",
      "expression" : "Schedule"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FR Core Service Type Duration Extension",
        "definition" : "Cette extension française permet d'associer le type de service avec la durée de ce service.\n\rThis French extension allows to associate the type of service with the duration of this service"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:serviceType",
        "path" : "Extension.extension",
        "sliceName" : "serviceType",
        "short" : "Type of the service that has to be performed during the appointment | Typedu service à assurer durant le RDV",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:serviceType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:serviceType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "serviceType"
      },
      {
        "id" : "Extension.extension:serviceType.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "description" : "This value set defines an example set of codes of service-types.",
          "valueSet" : "http://hl7.org/fhir/ValueSet/service-type|4.0.1"
        }
      },
      {
        "id" : "Extension.extension:duration",
        "path" : "Extension.extension",
        "sliceName" : "duration",
        "short" : "Duration of the service | durée du service",
        "definition" : "Duration of the service that has to be performed during the appointment | Durée du service à assurer durant le RDV",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:duration.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:duration.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "duration"
      },
      {
        "id" : "Extension.extension:duration.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
