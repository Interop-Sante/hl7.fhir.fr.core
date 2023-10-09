Extension: FRCorePatientBirthPlaceExtension
Id: fr-core-patient-birth-place
Title: "FR Core Patient Birth Place Extension"
Description: "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Place of Birth for patient"
* value[x] only Address
* value[x].district 1..
* value[x].district ^short = "District name (aka county) | Code officiel géogaphique (COG) de la commune (France) ou du pays"
* value[x].district ^definition = "The name of the administrative area (county) | Code officiel géogaphique (COG) de la commune (France) ou du pays"