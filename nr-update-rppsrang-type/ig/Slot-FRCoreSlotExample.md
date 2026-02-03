# FRCoreSlotExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreSlotExample**

## Example Slot: FRCoreSlotExample

Profil: [FR Core Slot Profile](StructureDefinition-fr-core-slot.md)

**identifier**: `http://slot-identifier-system.org`/451 (utilisation : usual, )

**serviceType**: Friendly Visiting

**specialty**: Médecine générale (SM)

**schedule**: [Schedule : extension = ,; identifier = http://schedule-identifier-system.org#45 (use: usual, ); specialty = Médecine générale (SM); planningHorizon = 2019-01-01 00:00:00+0000 --> 2020-01-01 00:00:00+0000](Schedule-FRCoreScheduleExample.md)

**status**: Free

**start**: 2019-01-04 09:15:00+0000

**end**: 2019-01-04 09:30:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "FRCoreSlotExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"
    ]
  },
  "identifier" : [
    {
      "use" : "usual",
      "system" : "http://slot-identifier-system.org",
      "value" : "451"
    }
  ],
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "7",
          "display" : "Friendly Visiting"
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
  "schedule" : {
    "reference" : "Schedule/FRCoreScheduleExample"
  },
  "status" : "free",
  "start" : "2019-01-04T09:15:00Z",
  "end" : "2019-01-04T09:30:00Z"
}

```
