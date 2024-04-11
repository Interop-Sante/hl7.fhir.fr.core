Profile: FRCorePractitionerProfile
Parent: Practitioner
Id: fr-core-practitioner
Title: "FR Core Practitioner Profile"
Description: """French profile of the Practitioner resource. This profile specifies the types of identifiers for practitioners in France.\r\n
Profil de la ressource Practitionner pour la France. Ce profil contraint les types d'identifiants du professionnel de santé en France"""
* . ^short = "A person with a  formal responsibility in the provisioning of healthcare or related services | Prestataire de santé"
* . ^definition = "A person who is directly or indirectly involved in the provisioning of healthcare | Un professionnel impliqué directement ou indirectement dans la prise en charge d'une personne."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-practitioner)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    fr-core-practitioner-specialty named specialty 0..1
    

* identifier.type from FRCoreValueSetPractitionerIdentifierType (extensible)
* identifier.type.coding.system ^example[0].label = "CodeSystem HL7v2 (PAM) pour un type d'identifiant PS"
* identifier.type.coding.system ^example[=].valueUri = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.system ^example[+].label = "CodeSystem ASIP pour un type d'identifiant d'un employé dans une structure"
* identifier.type.coding.system ^example[=].valueUri = "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"

* identifier.system 1..
* identifier.system ^definition = "Establishes the namespace for the value - that is, a OID that describes a set values that are unique.\r\nthe namespace for the practitioner identifier value is fixed in France.\r\nPour un PS identifié à partir de sa carte CPS, OID = 1.2.250.1.71.4.2.1\r\nPour un employé identifié au sein de sa structure, OID de l'établissement, branche de gestion des employés ou http://hopitalTest.fr/fhir/namingsystem/employes"
* identifier.value 1..

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"
// Contains rule

* identifier contains idNatPs 0..1 and rpps 0..* and adeli 0..* 

* identifier[idNatPs] ^short = "Identifiant national des PS. Cet identifiant est notamment utilisé dans le cadre du DMP et de la CPS. Cet identifiant est préfixé selon source de provenance de l'identifiant (cf Annexe Transverse – Source des données métier pour les professionnels et les structures du CI-SIS.)"

// Identifiant national des professionels de santé
* identifier[idNatPs].type ^short = "Type d’identifiant national de la personne physique (typeIdNat_PP),\r\nLes codes ADELI, RPPS et IDNPS proviennent du system  https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier[idNatPs].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNPS
* identifier[idNatPs].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[idNatPs].value ^short = "Identifiant national de la personne physique. 0 + ADELI ou 8 + RPPSidPP,\r\n Personne/Identifiant PP si l’instance correspond à un identifiant RPPS ou ADELI, sinon Personne/identification nationale PP."

// Identifiant du Répertoire Partagé des Professionnels intervenant dans le système de Santé (RPPS). Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier[rpps] ^short = "Numéro RPPS (11 chiffres)"
* identifier[rpps].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#RPPS
* identifier[rpps].system = "https://rpps.esante.gouv.fr"

// Identifiant ADELI. Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier[adeli] ^short = "Numéro ADELI (9 chiffres)"
* identifier[adeli].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#ADELI
* identifier[adeli].system = "https://adeli.esante.gouv.fr"





* name only FRCoreHumanNameProfile
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile

* qualification ^short = "Qualifications obtained by training and certification | Diplômes. Les différents diplômes sont : les diplômes d'état français, les commissions de qualification, les diplômes d'études spécialisées, les DESC groupe 1 et 2, les capacités, les diplômes d'un pays de l'EEE, les diplômes d'université (DU) ou Inter-Universitaire, les certificats d'étude spéciale, les attestations, les diplômes européens d'études spécialisées, les diplômes de 2ème cycle non qualifiant et les autres types de diplômes. Pour plus d'informations, consulter le jeu de valeurs associé."

* qualification.code from $JDV-J105-EnsembleDiplome-RASS (preferred)