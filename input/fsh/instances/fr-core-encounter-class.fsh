Instance: fr-core-encounter-class
InstanceOf: ValueSet
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #informative
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 2
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension[=].valueCode = #pa
* url = "http://interopsante.org/fhir/ValueSet/fr-core-encounter-class"
* identifier.system = "2.16.840.1.113883.2.8.1.3"
* identifier.value = "urn:oid:2.16.840.1.113883.2.8.1.3.23"
* version = "1.1.0"
* name = "FRCoreValueSetEncounterClass"
* title = "FR Core ValueSet Encounter class"
* status = #active
* experimental = false
* date = "2023-01-04"
* publisher = "InteropSanté"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://interopsante.org"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "vs@interopsante.org"
* description = "A set of codes that can be used to indicate the class of the encounter."
* compose.include.system = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* compose.include.version = "2.0.0"
* compose.include.version.fhir_comments = "qu'est-ce qu'il faut mettre dans la version?"
* compose.include.concept[0].code = #ACUTE
* compose.include.concept[=].display = "Inpatient acute"
* compose.include.concept[+].code = #NONAC
* compose.include.concept[=].display = "Inpatient non acute"
* compose.include.concept[+].code = #PRENC
* compose.include.concept[=].display = "Pre-admission"
* compose.include.concept[+].code = #SS
* compose.include.concept[=].display = "Short stay"
* compose.include.concept[+].code = #VR
* compose.include.concept[=].display = "Virtual"