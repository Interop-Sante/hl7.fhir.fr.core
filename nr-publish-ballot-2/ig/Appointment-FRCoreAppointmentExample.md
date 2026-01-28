# FRCoreAppointmentExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreAppointmentExample**

## Example Appointment: FRCoreAppointmentExample

Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md)

**FR Core Appointment Operator Extension**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)

**identifier**: `http://appointment-identifier-system.org`/123

**status**: Proposed

**serviceType**: Adoption/Permanent Care Info/Support

**specialty**: Médecine générale (SM)

**priority**: 5

**minutesDuration**: 15

**slot**: [Slot : identifier = http://slot-identifier-system.org#451 (use: usual, ); serviceType = Friendly Visiting; specialty = Médecine générale (SM); status = free; start = 2019-01-04 09:15:00+0000; end = 2019-01-04 09:30:00+0000](Slot-FRCoreSlotExample.md)

**created**: 2019-01-02

> **participant****actor**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientExample.md)**required**: Required**status**: Accepted

> **participant****actor**: [PractitionerRole Soignant](PractitionerRole-FRCorePractitionerRoleExample.md)**required**: Required**status**: Needs Action

> **participant****actor**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)**required**: Required**status**: Needs Action

**requestedPeriod**: 2019-01-04 09:15:00+0000 --> (en cours)



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "FRCoreAppointmentExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator",
      "valueReference" : {
        "reference" : "Patient/FRCorePatientExample"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://appointment-identifier-system.org",
      "value" : "123"
    }
  ],
  "status" : "proposed",
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "1",
          "display" : "Adoption/Permanent Care Info/Support"
        }
      ]
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM54",
          "display" : "Médecine générale (SM)"
        }
      ]
    }
  ],
  "priority" : 5,
  "minutesDuration" : 15,
  "slot" : [
    {
      "reference" : "Slot/FRCoreSlotExample"
    }
  ],
  "created" : "2019-01-02",
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/FRCorePatientExample"
      },
      "required" : "required",
      "status" : "accepted"
    },
    {
      "actor" : {
        "reference" : "PractitionerRole/FRCorePractitionerRoleExample"
      },
      "required" : "required",
      "status" : "needs-action"
    },
    {
      "actor" : {
        "reference" : "Practitioner/FRCorePractitionerExample"
      },
      "required" : "required",
      "status" : "needs-action"
    }
  ],
  "requestedPeriod" : [
    {
      "start" : "2019-01-04T09:15:00Z"
    }
  ]
}

```
