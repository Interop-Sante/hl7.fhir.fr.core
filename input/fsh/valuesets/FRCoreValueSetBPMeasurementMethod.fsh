ValueSet: FRCoreValueSetBPMeasurementMethod
Id: fr-core-bp-method
Title: "FR Core ValueSet BP measurement method"
Description: "A coded type for the blood pressure measurement method"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #informative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* SNOMED_CT#37931006 "Auscultation (procedure)"
* SNOMED_CT#113011001 "Palpation (procedure)"
* SNOMED_CT#61284002 "Machine, device (physical object)"
* SNOMED_CT#10179008 " Invasive (qualifier value)"