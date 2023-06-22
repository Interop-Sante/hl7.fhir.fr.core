Instance: fr-core-identifier-type-v1-0
InstanceOf: $shareablevalueset
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
* url = "http://interopsante.org/fhir/ValueSet/fr-core-patient-identifier-type"
* identifier.system = "http://interopsante.org/fhir/fr-valuset"
* identifier.value = "urn:oid:2.16.840.1.113883.2.8.1.3.1"
* version = "1.1.0"
* name = "FRCoreValueSetPatientIdentifierType"
* title = "FR Core ValueSet Patient identifier type"
* status = #active
* experimental = false
* date = "2023-01-02"
* publisher = "InteropSanté"
* contact.name = "InteropSanté"
* contact.telecom.system = #email
* contact.telecom.value = "fhir@interopsante.org"
* contact.telecom.use = #work
* description = "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient)."
* immutable = false
* compose.include[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203 "
* compose.include[=].version = "2.9.0"
* compose.include[=].concept[0].code = #PPN
* compose.include[=].concept[=].display = "Passport Number"
* compose.include[=].concept[+].code = #PN
* compose.include[=].concept[=].display = "Person Number"
* compose.include[=].concept[+].code = #PI
* compose.include[=].concept[=].display = "Patient Identifier"
* compose.include[=].concept[+].code = #RRI
* compose.include[=].concept[=].display = "Regional Registry ID"
* compose.include[+].system = "http://interopsante.org/fhir/CodeSystem/fr-v2-0203"
* compose.include[=].version = "1.1.0"
* compose.include[=].concept[0].code = #NNFRA
* compose.include[=].concept[=].display = "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code"
* compose.include[=].concept[+].code = #NDP
* compose.include[=].concept[=].display = "Identifiant du patient au Dossier Pharmaceutique"
* compose.include[=].concept[+].code = #INS-C
* compose.include[=].concept[=].display = "Identifiant National de Santé Calculé"
* compose.include[=].concept[+].code = #INS-NIA
* compose.include[=].concept[=].display = "NIR temporaire"
* compose.include[=].concept[+].code = #INS-NIR
* compose.include[=].concept[=].display = "NIR définitif"