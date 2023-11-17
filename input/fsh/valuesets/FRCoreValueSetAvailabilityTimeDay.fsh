ValueSet: FRCoreValueSetAvailabilityTimeDay
Id: fr-core-availability-time-day
Title: "First day of the workweek | Premier jour de la semaine de travail "
Description: "Specifies the day on which the workweek starts. Valid values are MO, TU, WE, TH, FR, SA and SU. | Spécifie les jours à partir desquels la semaine de travail commence"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "Availability Time Day"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* DaysOfWeek#MO "Monday"
* DaysOfWeek#TU "Tuesday"
* DaysOfWeek#WE "Wednesday"
* DaysOfWeek#TH "Thursday"
* DaysOfWeek#FR "Friday"
* DaysOfWeek#SA "Saturday"
* DaysOfWeek#SU "Sunday"


// Il doit déjà exister un VS à ce propos, à remplacer ?