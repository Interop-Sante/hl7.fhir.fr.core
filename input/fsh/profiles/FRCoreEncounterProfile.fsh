Profile: FRCoreEncounterProfile
Parent: Encounter
Id: fr-core-encounter
Title: "FR Core Encounter Profile"
Description: "This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay. | Ce profil de la ressource Encounter sert à la fois à définir la venue dans l'établissement et à représenter les mouvements du patient qui découpent cette venue."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains FRCoreEncounterEstimatedDischargeDateExtension named estimatedDischargeDate 0..1

* identifier 1..*
* identifier ^short = "Identifier(s) by which this encounter is known | identifiant de la rencontre"
* identifier ^definition = "Identifier(s) by which this encounter is known.Cet élément est multiévalué (pour ne pas bloquer les implémentations, car il arrive sur le terrain qu'il y ait plusieurs id pour une même admission, mais cette situation est considérée comme une anomalie)"

* identifier.type 1..
* identifier.type from FRCoreValueSetEncounterIdentifierType (extensible)
* identifier.type ^definition = "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose | Type d'identifiant (admission ou de mouvement lors d'une hospitalisation) (JdV à définir)"
* identifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier.type ^binding.extension[=].valueString = "IdentifierType"
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true

* identifier.system 1..
* identifier.system ^definition = "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre, concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France."

* identifier.system ^example[0].label = "OID de l'ANS de gestion des organisations (1.2.250.1.71.4.2.2) suivi du FINESS suivi de la branche z qui gère les id de venue/mouvements si l'établissement n'a pas d'OID (sinon utilisation de l'OID de l'établissement)"
* identifier.system ^example[=].valueUri = "1.2.250.1.71.4.2.2.1330780321"
* identifier.system ^example[+].label = "autre solution, utilisation d'une URL"
* identifier.system ^example[=].valueUri = "http://hopitalTest.fr/fhir/namingsystem/encounters"
* identifier.value 1..
* identifier.assigner only Reference(FRCoreOrganizationProfile)

* class.system 1..
* class.code 1..
* type ..1
* type from FRCoreValueSetEncounterType (example)
* type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EncounterType"
* subject only Reference(FRCorePatientProfile)
* participant ^short = "List of participants involved in the encounter | Liste des personnes impliquées dans la rencontre"
* participant.individual only Reference(RelatedPerson or FRCorePractitionerProfile or PractitionerRole)
* appointment only Reference(FRCoreAppointmentProfile)
* period 1..
* account ..1
* hospitalization.preAdmissionIdentifier ^short = "Pre-admission identifier | Identifiant de pré-admission"

* hospitalization.preAdmissionIdentifier.type 1..
* hospitalization.preAdmissionIdentifier.type from FRCoreValueSetEncounterIdentifierType (extensible)
* hospitalization.preAdmissionIdentifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[=].valueString = "IdentifierType"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[=].valueBoolean = true
* hospitalization.preAdmissionIdentifier.system 1..
* hospitalization.preAdmissionIdentifier.system = "1.2.250.1.71.4.2.2+.n°FINESS" (exactly)
* hospitalization.preAdmissionIdentifier.system ^definition = "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre , concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France"
* hospitalization.preAdmissionIdentifier.value 1..
* hospitalization.preAdmissionIdentifier.assigner only Reference(FRCoreOrganizationProfile)
* hospitalization.origin only Reference(FRCoreLocationProfile or FRCoreOrganizationProfile)
* hospitalization.reAdmission ^short = "the resaon of re-admission of this hospitalization encounter | Raison de la ré-admission du patient."
* hospitalization.destination only Reference(FRCoreLocationProfile or FRCoreOrganizationProfile)
* hospitalization.dischargeDisposition from FRCoreValueSetEncounterDischargeDisposition (example)
* hospitalization.dischargeDisposition ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.dischargeDisposition ^binding.extension[=].valueString = "DischargeDisp"
* location.location only Reference(FRCoreLocationProfile)

* location.physicalType from FRCoreValueSetLocationPhysicalType (example)
* location.physicalType ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* location.physicalType ^binding.extension[=].valueString = "PhysicalType"

* serviceProvider only Reference(FRCoreOrganizationProfile)

* partOf only Reference(FRCoreEncounterProfile)