Alias: $SCT = http://snomed.info/sct 

ValueSet: FRCoreValueSetBPMeasurementMethod
Id: fr-core-vs-bp-method
Title: "FR Core ValueSet BP measurement method"
Description: "A coded type for the blood pressure measurement method"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* $SCT#37931006 "Auscultation (procedure)"
* $SCT#113011001 "Palpation (procedure)"
* $SCT#61284002 "Machine, device (physical object)"
* $SCT#10179008 "Invasive (qualifier value)"

// SVS profile
* ^experimental = false