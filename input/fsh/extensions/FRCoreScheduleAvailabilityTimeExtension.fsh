Extension: FRCoreScheduleAvailabilityTimeExtension
Id: fr-core-schedule-availability-time
Title: "FR Core Schedule availability time Extension"
Description: "Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l'identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d'une période récurrente, la date de création de la période et une priorité.\n\rThis extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period"
* ^context.type = #element
* ^context.expression = "Schedule"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    type 1..1 and
    rrule 0..1 and
    start 1..1 and
    end 1..1 and
    identifier 1..* and
    unavailabilityReason 0..1 and
    created 0..1 and
    priority 0..1

* extension[type].value[x] only Coding
* extension[type].valueCoding from FRCoreValueSetScheduleType (extensible)


* extension[rrule] ^short = "Recurrent caracteristic of the Schedule | Caractère récurrent du Schedule"
* extension[rrule] ^definition = "Specification of the recurrent periods | Spécifications des périodes récurrentes\r\nthe element's value sets come from iCalendar | les Jdv des éléments de rrule proviennent de iCalendar"
* extension[rrule].extension ^slicing.discriminator.type = #value
* extension[rrule].extension ^slicing.discriminator.path = "url"
* extension[rrule].extension ^slicing.rules = #open
* extension[rrule].extension contains
    freq 1..1 and
    until 0..1 and
    count 0..1 and
    interval 0..1 and
    bySecond 0..* and
    byMinute 0..* and
    byHour 0..* and
    byDay 0..* and
    byMonthDay 0..* and
    byYearDay 0..* and
    byWeekNo 0..* and
    byMonth 0..* and
    wkst 0..*

* extension[rrule].extension[freq] ^short = "The value set comes from iCalendar | Le jeu de valeur est issu de iCalendar"
* extension[rrule].extension[freq] ^definition = "Identifies the type of recurrence rule (year, month, day, hour, minute, seconde) | Identifie le type de récurrence\r\nThe value set comes from iCalendar | Le jeu de valeur est issu de iCalendar"
* extension[rrule].extension[freq].value[x] only Coding
* extension[rrule].extension[freq].value[x] from FRCoreValueSetAvailabilityTimeRule (required)
* extension[rrule].extension[freq].value[x].system = "https://www.ietf.org/rfc/rfc2445" (exactly)

* extension[rrule].extension[until] ^definition = "Defines a date-time value which bounds the recurrence rule in an inclusive manner | Defini une Date/Time de fin de la récurrence"
* extension[rrule].extension[until].value[x] only dateTime

* extension[rrule].extension[count] ^short = "Number of occurrences | Nombre d'occurences"
* extension[rrule].extension[count] ^definition = "Defines the number of occurrences at which to range-bound the recurrence | Nombre d'occurences lié au type de récurrence (freq)"
* extension[rrule].extension[count].value[x] only integer

* extension[rrule].extension[interval] ^short = "How often the recurrence rule repeats | répétition de la règle de récurrence"
* extension[rrule].extension[interval] ^definition = "Contains a positive integer representing how often the recurrence rule repeats. The default value is \"1\", meaning every second for a SECONDLY rule, or every minute for a MINUTELY rule, every hour for an HOURLY rule, every day for a DAILY rule, every week for a WEEKLY rule, every month for a MONTHLY rule and every year for a YEARLY rule. | Contient un entier positif qui indique le nombre de fois que la règle de récurrence se répète. La valeur par défaut \"1\" signifie que la règle se répète une fois toutes les secondes, minute, heure, etc.. en fonction de la fréquence définie (secondly, minutely, etc..)"
* extension[rrule].extension[interval].value[x] only integer

* extension[rrule].extension[bySecond] ^short = "List of seconds within a minute | Liste de secondes dans une minute"
* extension[rrule].extension[bySecond].value[x] only positiveInt

* extension[rrule].extension[byMinute] ^short = "List of minutes within an hour | Liste de minutes dans une heure"
* extension[rrule].extension[byMinute].value[x] only positiveInt

* extension[rrule].extension[byHour] ^short = "List of hours of the day | Liste des heures du jour"
* extension[rrule].extension[byHour].value[x] only positiveInt

* extension[rrule].extension[byDay] ^short = "List of days of the week | Liste des jours de la semaine"
* extension[rrule].extension[byDay].value[x] only string

* extension[rrule].extension[byMonthDay] ^short = "List of days of the month | Liste des jours dans le mois"
* extension[rrule].extension[byMonthDay] ^definition = "list of days of the month. Valid values are 1 to 31 or -31 to -1. For example, -10 represents the tenth to the last day of    the month. | Liste des jours dans le mois. Les valeurs acceptées sont de 1 à 31 ou de -31 à -1. Par exemple, -10 représente le 10° jour avant la fin du mois."
* extension[rrule].extension[byMonthDay].value[x] only integer

* extension[rrule].extension[byYearDay] ^short = "List of days of the year | liste des jours de l'année (1 à 366)"
* extension[rrule].extension[byYearDay] ^definition = "List of days of the year. Valid values are 1 to 366 or -366 to -1. For example, -1 represents the last day of the year   (December 31st) and -306 represents the 306th to the last day of the year (March 1st). | Liste des jours de l'année. Les valeurs acceptées vont de 1 à 366 ou -366 à -1. Par exemple, -1 représente le dernier jour de l'année (31 Décembre). et -306 représente le 306° jour avant la fin de l'année (le 1° mars)."
* extension[rrule].extension[byYearDay].value[x] only string

* extension[rrule].extension[byWeekNo] ^short = "List of weeks of the year | Liste des semaines de l'année"
* extension[rrule].extension[byWeekNo] ^definition = "List of ordinals specifying weeks of the year. Valid values are 1 to 53 or -53 to -1 | Liste des semaines de l'année, valeurs de 1 à 53 ou de -53 à -1"
* extension[rrule].extension[byWeekNo].value[x] only integer

* extension[rrule].extension[byMonth] ^short = "List of months of the year | Liste des mois de l'année"
* extension[rrule].extension[byMonth] ^definition = "List of months of the year. Valid values are 1 to 12. | Liste des mois de l'année (valeurs de 1 à 12)."
* extension[rrule].extension[byMonth].value[x] only positiveInt

* extension[rrule].extension[wkst] ^short = "First day of the workweek | Premier jour de la semaine de travail"
* extension[rrule].extension[wkst] ^binding.description = "The value set comes from iCalendar | Le jeu de valeur est issu de iCalendar"
* extension[rrule].extension[wkst].value[x] only code
* extension[rrule].extension[wkst].value[x] from DaysOfWeek (required)

* extension[start] ^short = "Start of the period | Début de la période"
* extension[start].value[x] only dateTime

* extension[end] ^short = "End of the period | Fin de la période"
* extension[end].value[x] only dateTime

* extension[identifier] ^short = "Availability/non-availabilty identifier | Identifiant des disponibilités/non disponibilités"
* extension[identifier] ^definition = "non-availabilty identifier used to update this information | Identifiant des non disponibilités, permettant de modifier cette information par la suite"
* extension[identifier].value[x] only Identifier

* extension[unavailabilityReason] ^short = "Non-availability resaon | Raison de l'indisponibilité"
* extension[unavailabilityReason].value[x] only CodeableConcept
// * extension[unavailabilityReason].value[x] from fr-core-schedule-unavailability-reason (example) 
// * extension[unavailabilityReason].value[x] from $fr-core-schedule-unavailability-reason (extensible) // TODO : valueset à créer

* extension[created] ^short = "The date/time the period was created | Date de création de la période"
* extension[created] ^definition = "Date/time of the availabibility/non-availlabilty period was created | Date/time à laquelle la période de disponibilité/indisponibilité a été crée"
* extension[created].value[x] only dateTime

* extension[priority].value[x] only integer