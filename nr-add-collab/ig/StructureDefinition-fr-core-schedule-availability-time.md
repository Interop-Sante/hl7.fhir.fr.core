# FR Core Schedule availability time Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Schedule availability time Extension**

## Extension: FR Core Schedule availability time Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreScheduleAvailabilityTimeExtension |

Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l’identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d’une période récurrente, la date de création de la période et une priorité.

This extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce Extension: [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-schedule-availability-time)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-schedule-availability-time.csv), [Excel](StructureDefinition-fr-core-schedule-availability-time.xlsx), [Schematron](StructureDefinition-fr-core-schedule-availability-time.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-schedule-availability-time",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreScheduleAvailabilityTimeExtension",
  "title" : "FR Core Schedule availability time Extension",
  "status" : "active",
  "date" : "2025-12-05T09:13:38+00:00",
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
  "description" : "Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l'identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d'une période récurrente, la date de création de la période et une priorité.\n\rThis extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
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
        "short" : "FR Core Schedule availability time Extension",
        "definition" : "Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l'identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d'une période récurrente, la date de création de la période et une priorité.\n\rThis extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 4
      },
      {
        "id" : "Extension.extension:type",
        "path" : "Extension.extension",
        "sliceName" : "type",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:type.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "type"
      },
      {
        "id" : "Extension.extension:type.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-schedule-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Extension.extension:rrule",
        "path" : "Extension.extension",
        "sliceName" : "rrule",
        "short" : "Recurrent caracteristic of the Schedule | Caractère récurrent du Schedule",
        "definition" : "Specification of the recurrent periods | Spécifications des périodes récurrentes\r\nthe element's value sets come from iCalendar | les Jdv des éléments de rrule proviennent de iCalendar",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:rrule.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:rrule.extension:freq",
        "path" : "Extension.extension.extension",
        "sliceName" : "freq",
        "short" : "The value set comes from iCalendar | Le jeu de valeur est issu de iCalendar",
        "definition" : "Identifies the type of recurrence rule (year, month, day, hour, minute, seconde) | Identifie le type de récurrence\r\nThe value set comes from iCalendar | Le jeu de valeur est issu de iCalendar",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:rrule.extension:freq.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:freq.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "freq"
      },
      {
        "id" : "Extension.extension:rrule.extension:freq.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-availability-time-rule|2.2.0-ballot"
        }
      },
      {
        "id" : "Extension.extension:rrule.extension:freq.value[x].system",
        "path" : "Extension.extension.extension.value[x].system",
        "patternUri" : "https://www.ietf.org/rfc/rfc2445"
      },
      {
        "id" : "Extension.extension:rrule.extension:until",
        "path" : "Extension.extension.extension",
        "sliceName" : "until",
        "definition" : "Defines a date-time value which bounds the recurrence rule in an inclusive manner | Defini une Date/Time de fin de la récurrence",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:rrule.extension:until.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:until.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "until"
      },
      {
        "id" : "Extension.extension:rrule.extension:until.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:count",
        "path" : "Extension.extension.extension",
        "sliceName" : "count",
        "short" : "Number of occurrences | Nombre d'occurences",
        "definition" : "Defines the number of occurrences at which to range-bound the recurrence | Nombre d'occurences lié au type de récurrence (freq)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:rrule.extension:count.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:count.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "count"
      },
      {
        "id" : "Extension.extension:rrule.extension:count.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:interval",
        "path" : "Extension.extension.extension",
        "sliceName" : "interval",
        "short" : "How often the recurrence rule repeats | répétition de la règle de récurrence",
        "definition" : "Contains a positive integer representing how often the recurrence rule repeats. The default value is \"1\", meaning every second for a SECONDLY rule, or every minute for a MINUTELY rule, every hour for an HOURLY rule, every day for a DAILY rule, every week for a WEEKLY rule, every month for a MONTHLY rule and every year for a YEARLY rule. | Contient un entier positif qui indique le nombre de fois que la règle de récurrence se répète. La valeur par défaut \"1\" signifie que la règle se répète une fois toutes les secondes, minute, heure, etc.. en fonction de la fréquence définie (secondly, minutely, etc..)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:rrule.extension:interval.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:interval.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "interval"
      },
      {
        "id" : "Extension.extension:rrule.extension:interval.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:bySecond",
        "path" : "Extension.extension.extension",
        "sliceName" : "bySecond",
        "short" : "List of seconds within a minute | Liste de secondes dans une minute",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:bySecond.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:bySecond.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "bySecond"
      },
      {
        "id" : "Extension.extension:rrule.extension:bySecond.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byMinute",
        "path" : "Extension.extension.extension",
        "sliceName" : "byMinute",
        "short" : "List of minutes within an hour | Liste de minutes dans une heure",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMinute.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMinute.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byMinute"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMinute.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byHour",
        "path" : "Extension.extension.extension",
        "sliceName" : "byHour",
        "short" : "List of hours of the day | Liste des heures du jour",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byHour.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byHour.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byHour"
      },
      {
        "id" : "Extension.extension:rrule.extension:byHour.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byDay",
        "path" : "Extension.extension.extension",
        "sliceName" : "byDay",
        "short" : "List of days of the week | Liste des jours de la semaine",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byDay.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byDay.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byDay"
      },
      {
        "id" : "Extension.extension:rrule.extension:byDay.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonthDay",
        "path" : "Extension.extension.extension",
        "sliceName" : "byMonthDay",
        "short" : "List of days of the month | Liste des jours dans le mois",
        "definition" : "list of days of the month. Valid values are 1 to 31 or -31 to -1. For example, -10 represents the tenth to the last day of    the month. | Liste des jours dans le mois. Les valeurs acceptées sont de 1 à 31 ou de -31 à -1. Par exemple, -10 représente le 10° jour avant la fin du mois.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonthDay.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonthDay.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byMonthDay"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonthDay.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byYearDay",
        "path" : "Extension.extension.extension",
        "sliceName" : "byYearDay",
        "short" : "List of days of the year | liste des jours de l'année (1 à 366)",
        "definition" : "List of days of the year. Valid values are 1 to 366 or -366 to -1. For example, -1 represents the last day of the year   (December 31st) and -306 represents the 306th to the last day of the year (March 1st). | Liste des jours de l'année. Les valeurs acceptées vont de 1 à 366 ou -366 à -1. Par exemple, -1 représente le dernier jour de l'année (31 Décembre). et -306 représente le 306° jour avant la fin de l'année (le 1° mars).",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byYearDay.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byYearDay.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byYearDay"
      },
      {
        "id" : "Extension.extension:rrule.extension:byYearDay.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byWeekNo",
        "path" : "Extension.extension.extension",
        "sliceName" : "byWeekNo",
        "short" : "List of weeks of the year | Liste des semaines de l'année",
        "definition" : "List of ordinals specifying weeks of the year. Valid values are 1 to 53 or -53 to -1 | Liste des semaines de l'année, valeurs de 1 à 53 ou de -53 à -1",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byWeekNo.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byWeekNo.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byWeekNo"
      },
      {
        "id" : "Extension.extension:rrule.extension:byWeekNo.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonth",
        "path" : "Extension.extension.extension",
        "sliceName" : "byMonth",
        "short" : "List of months of the year | Liste des mois de l'année",
        "definition" : "List of months of the year. Valid values are 1 to 12. | Liste des mois de l'année (valeurs de 1 à 12).",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonth.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonth.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "byMonth"
      },
      {
        "id" : "Extension.extension:rrule.extension:byMonth.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:rrule.extension:wkst",
        "path" : "Extension.extension.extension",
        "sliceName" : "wkst",
        "short" : "First day of the workweek | Premier jour de la semaine de travail",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:rrule.extension:wkst.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:rrule.extension:wkst.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "wkst"
      },
      {
        "id" : "Extension.extension:rrule.extension:wkst.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/days-of-week|4.0.1"
        }
      },
      {
        "id" : "Extension.extension:rrule.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "rrule"
      },
      {
        "id" : "Extension.extension:rrule.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:start",
        "path" : "Extension.extension",
        "sliceName" : "start",
        "short" : "Start of the period | Début de la période",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:start.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:start.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "start"
      },
      {
        "id" : "Extension.extension:start.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:end",
        "path" : "Extension.extension",
        "sliceName" : "end",
        "short" : "End of the period | Fin de la période",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:end.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:end.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "end"
      },
      {
        "id" : "Extension.extension:end.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:identifier",
        "path" : "Extension.extension",
        "sliceName" : "identifier",
        "short" : "Availability/non-availabilty identifier | Identifiant des disponibilités/non disponibilités",
        "definition" : "non-availabilty identifier used to update this information | Identifiant des non disponibilités, permettant de modifier cette information par la suite",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:identifier.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:identifier.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "identifier"
      },
      {
        "id" : "Extension.extension:identifier.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Extension.extension:unavailabilityReason",
        "path" : "Extension.extension",
        "sliceName" : "unavailabilityReason",
        "short" : "Non-availability resaon | Raison de l'indisponibilité",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:unavailabilityReason.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:unavailabilityReason.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "unavailabilityReason"
      },
      {
        "id" : "Extension.extension:unavailabilityReason.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-schedule-unavailability-reason|2.2.0-ballot"
        }
      },
      {
        "id" : "Extension.extension:created",
        "path" : "Extension.extension",
        "sliceName" : "created",
        "short" : "The date/time the period was created | Date de création de la période",
        "definition" : "Date/time of the availabibility/non-availlabilty period was created | Date/time à laquelle la période de disponibilité/indisponibilité a été crée",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:created.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:created.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "created"
      },
      {
        "id" : "Extension.extension:created.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:priority",
        "path" : "Extension.extension",
        "sliceName" : "priority",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:priority.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:priority.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "priority"
      },
      {
        "id" : "Extension.extension:priority.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time"
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
