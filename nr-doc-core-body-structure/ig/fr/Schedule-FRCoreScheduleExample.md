# FRCoreScheduleExample - Guide d'implémentation FR Core v2.2.0

## Exemple Schedule: FRCoreScheduleExample

-------

**French**

-------

Profil: [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)

> **FR Core Schedule availability time Extension**
* identifier: dispo09112020
* type: [FR Core CodeSystem Schedule Type: free](CodeSystem-fr-core-cs-schedule-type.md#fr-core-cs-schedule-type-free) (Disponibilité)
* start: 2020-11-09 08:00:00+0100
* end: 2020-11-09 20:00:00+0100

> **FR Core Service Type Duration Extension**
* serviceType: Hypnotherapy
* duration: 15 minute (Détails : code UCUMmin = 'min')

**identifier**: `http://schedule-identifier-system.org`/45 (utilisation : usual)

**active**: true

**specialty**: Médecine générale (SM)

**actor**: 

* [Leclerc Sophie (Identifiant National de Professionnel de Santé: 810101201234 (use: official)): Activité de soin et de pharmacie, Libéral, indépendant, artisan, commerçant, Adjoint at HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G (Entité légale, Secteur non défini) (Identification nationale de structure définie par l’ANS dans le CI_SIS: 2264403106 (use: official)) (https://rpps.esante.gouv.fr#1011848351 (use: official))](PractitionerRole-FRCorePractitionerRoleExample.md)
* [Leclerc Sophie (Identifiant National de Professionnel de Santé: 810101201234 (use: official))](Practitioner-FRCorePractitionerExample.md)

**planningHorizon**: 2019-01-01 00:00:00+0000 --> 2020-01-01 00:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "FRCoreScheduleExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "identifier",
      "valueIdentifier" : {
        "value" : "dispo09112020"
      }
    },
    {
      "url" : "type",
      "valueCoding" : {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type",
        "code" : "free",
        "display" : "Disponibilité"
      }
    },
    {
      "url" : "start",
      "valueDateTime" : "2020-11-09T08:00:00+01:00"
    },
    {
      "url" : "end",
      "valueDateTime" : "2020-11-09T20:00:00+01:00"
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time"
  },
  {
    "extension" : [{
      "url" : "serviceType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "22",
          "display" : "Hypnotherapy"
        }]
      }
    },
    {
      "url" : "duration",
      "valueDuration" : {
        "value" : 15,
        "unit" : "minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
  }],
  "identifier" : [{
    "use" : "usual",
    "system" : "http://schedule-identifier-system.org",
    "value" : "45"
  }],
  "active" : true,
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM54",
      "display" : "Médecine générale (SM)"
    }]
  }],
  "actor" : [{
    "reference" : "PractitionerRole/FRCorePractitionerRoleExample"
  },
  {
    "reference" : "Practitioner/FRCorePractitionerExample"
  }],
  "planningHorizon" : {
    "start" : "2019-01-01T00:00:00Z",
    "end" : "2020-01-01T00:00:00Z"
  }
}

```
