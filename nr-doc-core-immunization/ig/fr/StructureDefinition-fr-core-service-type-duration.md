# FR Core Service Type Duration Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Service Type Duration Extension 

Cette extension française permet d’associer le type de service avec la durée de ce service.

This French extension allows to associate the type of service with the duration of this service

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce/t/te Extension: [Service de cardiologie](HealthcareService-svc-cardiologie-1.md) and [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-service-type-duration)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Cette extension française permet d'associer le type de service avec la durée de ce service. This French extension allows to associate the type of service with the duration of this service

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Cette extension française permet d'associer le type de service avec la durée de ce service. This French extension allows to associate the type of service with the duration of this service

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-service-type-duration.csv), [Excel](../StructureDefinition-fr-core-service-type-duration.xlsx), [Schematron](../StructureDefinition-fr-core-service-type-duration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-service-type-duration",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration",
  "version" : "2.2.0",
  "name" : "FRCoreServiceTypeDurationExtension",
  "title" : "FR Core Service Type Duration Extension",
  "status" : "active",
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Cette extension française permet d'associer le type de service avec la durée de ce service.\n\rThis French extension allows to associate the type of service with the duration of this service",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
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
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
      "type" : [{
        "code" : "CodeableConcept"
      }],
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
      "type" : [{
        "code" : "Duration"
      }]
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
    }]
  }
}

```
