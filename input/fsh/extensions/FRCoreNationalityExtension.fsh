Extension: FRCoreNationalityExtension
Id: fr-core-patient-nationality
Title: "FR Core Nationality Extension"
Description: "The nationality of the patient."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Nationality"
* . ^definition = "The nationality of the patient."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    code 0..1 and
    period 0..1
* extension[code] ^short = "Nationality Code"
* extension[code] ^definition = "Code representing nationality of patient."
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-Country (extensible)
* extension[period] ^short = "Nationality Period"
* extension[period] ^definition = "Period when nationality was effective."
* extension[period].value[x] 1..
* extension[period].value[x] only Period