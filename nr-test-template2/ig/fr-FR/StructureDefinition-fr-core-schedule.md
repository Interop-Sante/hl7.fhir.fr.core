# FR Core Schedule Profile - Guide d'implémentation FR Core v2.2.0

## : FR Core Schedule Profile 

 
Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule 
Profil de la ressource Schedule pour l’usage en France. Ce profil redéfinit l’élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. 

**Utilisations:**

* Référence ce Profil: [FR Core Slot Profile](StructureDefinition-fr-core-slot.md)
* Exemples pour ce/t/te Profil: [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-schedule)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0](StructureDefinition-fr-core-service-type-duration.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time|2.2.0](StructureDefinition-fr-core-schedule-availability-time.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Schedule.meta.profile

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0](StructureDefinition-fr-core-service-type-duration.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time|2.2.0](StructureDefinition-fr-core-schedule-availability-time.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Schedule.meta.profile

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-schedule",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
  "version" : "2.2.0",
  "name" : "FRCoreScheduleProfile",
  "title" : "FR Core Schedule Profile",
  "status" : "active",
  "date" : "2026-06-04T15:08:19+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule\r\n\nProfil de la ressource Schedule pour l'usage en France. Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    },
    {
      "id" : "Schedule.meta.profile",
      "path" : "Schedule.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
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
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule|2.2.0"
    },
    {
      "id" : "Schedule.extension",
      "path" : "Schedule.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Schedule.extension:serviceTypeDuration",
      "path" : "Schedule.extension",
      "sliceName" : "serviceTypeDuration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0"]
      }]
    },
    {
      "id" : "Schedule.extension:availabilityTime",
      "path" : "Schedule.extension",
      "sliceName" : "availabilityTime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time|2.2.0"]
      }]
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
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0"
      }
    },
    {
      "id" : "Schedule.actor",
      "path" : "Schedule.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0"]
      }]
    }]
  }
}

```
