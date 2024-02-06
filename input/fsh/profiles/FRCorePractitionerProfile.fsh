Profile: FRCorePractitionerProfile
Parent: Practitioner
Id: fr-core-practitioner
Title: "FR Core Practitioner Profile"
Description: """French profile of the Practitioner resource | Profil de la ressource Practitionner pour la France
This profile specifies the types of identifiers for practitioners in France | Ce profil contraint les types d'identifiants du professionnel de santé en France"""
* . ^short = "A person with a  formal responsibility in the provisioning of healthcare or related services | Prestataire de santé"
* . ^definition = "A person who is directly or indirectly involved in the provisioning of healthcare | Un professionnel impliqué directement ou indirectement dans la prise en charge d'une personne."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-practitioner)

* identifier.type from FRCoreValueSetPractitionerIdentifierType (extensible)
* identifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier.type ^binding.extension[=].valueBoolean = true
* identifier.type.coding.system ^example[0].label = "CodeSystem HL7v2 (PAM) pour un type d'identifiant PS"
* identifier.type.coding.system ^example[=].valueUri = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.system ^example[+].label = "CodeSystem ASIP pour un type d'identifiant d'un employé dans une structure"
* identifier.type.coding.system ^example[=].valueUri = "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"

* identifier.system 1..
* identifier.system ^definition = "Establishes the namespace for the value - that is, a OID that describes a set values that are unique.\r\nthe namespace for the practitioner identifier value is fixed in France.\r\nPour un PS identifié à partir de sa carte CPS, OID = 1.2.250.1.71.4.2.1\r\nPour un employé identifié au sein de sa structure, OID de l'établissement, branche de gestion des employés ou http://hopitalTest.fr/fhir/namingsystem/employes"
* identifier.system ^example[0].label = "Pour un PS identifié à partir de sa carte CPS"
* identifier.system ^example[=].valueUri = "urn:oid:1.2.250.1.71.4.2.1"
* identifier.system ^example[+].label = "Pour un employé identifié au sein de sa structure, OID de l'établissement suivi de la branche de gestion des employés ou"
* identifier.system ^example[=].valueUri = "http://hopitalTest.fr/fhir/namingsystem/employes"
* identifier.value 1..

* name only FRCoreHumanNameProfile
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile
* gender from AdministrativeGender (required)

* qualification ^short = "Qualifications obtained by training and certification/Diplômes"
* qualification ^definition = "Qualifications obtained by training and certification/Diplômes obtenus"

* qualification.code from $JDV-J105-EnsembleDiplome-RASS (preferred)