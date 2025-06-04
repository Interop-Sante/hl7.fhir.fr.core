ValueSet: FRCoreValueSetPractitionerSpecialty
Id: fr-core-vs-practitioner-specialty
Title: "FR Core ValueSet Practitioner specialty"
Description: "The modalities of exercice of the practitioner, registered by an official organization for a period of time."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^immutable = true
* include codes from system $TRE-R38-SpecialiteOrdinale

// SVS profile
* ^experimental = false