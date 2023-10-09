Profile: FRCorePractitionerProfile
Parent: Practitioner
Id: fr-core-practitioner
Title: "FR Core Practitioner Profile"
Description: """French profile of the Practitioner resource | Profil de la ressource Practitionner pour la France
This profile specifies the types of identifiers for practitioners in France | Ce profil contraint les types d'identifiants du professionnel de santé en France"""
* . ^short = "A person with a  formal responsibility in the provisioning of healthcare or related services | Prestataire de santé"
* . ^definition = "A person who is directly or indirectly involved in the provisioning of healthcare | Un professionnel impliqué directement ou indirectement dans la prise en charge d'une personne."

* ^status = #active
* identifier.use from IdentifierUse (required)
* identifier.type from FRCoreValueSetPractionerIdentifierType (extensible)
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
* telecom.system ^example[0].label = "le CodeSystem associé au jeu de valeurs"
* telecom.system ^example[=].valueCode = #http://hl7.org/fhir/contact-point-system
* address only FRCoreAddressProfile
* gender from AdministrativeGender (required)
* gender ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* gender ^binding.extension[=].valueBoolean = true

* qualification ^short = "Qualifications obtained by training and certification/Diplômes"
* qualification ^definition = "Qualifications obtained by training and certification/Diplômes obtenus"
* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains
    degreeR36 0..* and
    degreeR47 0..* and
    degreeR48 0..* and
    degreeR49 0..* and
    degreeR50 0..* and
    degreeR51 0..* and
    degreeR52 0..* and
    degreeR53 0..* and
    degreeR54 0..* and
    degreeR55 0..* and
    degreeR56 0..* and
    degreeR57 0..* and
    degreeR58 0..* and
    degreeR226 0..*

* qualification.code.coding[degreeR36] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR36].system = "https://mos.esante.gouv.fr/NOS/TRE_R36-AutreDiplomeObtenu/FHIR/TRE-R36-AutreDiplomeObtenu" (exactly)
* qualification.code.coding[degreeR36] ^short = "Autre diplôme obtenu"

* qualification.code.coding[degreeR47] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR47].system = "https://mos.esante.gouv.fr/NOS/TRE_R47-CommissionQualification/FHIR/TRE-R47-CommissionQualification" (exactly)
* qualification.code.coding[degreeR47] ^short = "Commission de qualification"

* qualification.code.coding[degreeR48] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR48].system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais" (exactly)
* qualification.code.coding[degreeR48] ^short = "Diplôme de l'Etat français"

* qualification.code.coding[degreeR49] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR49].system = "https://mos.esante.gouv.fr/NOS/TRE_R49-DiplomeEtudeSpecialisee/FHIR/TRE-R49-DiplomeEtudeSpecialisee" (exactly)
* qualification.code.coding[degreeR49] ^short = "Diplôme d'Etudes Spécialisées"
* qualification.code.coding[degreeR49].system ^definition = "Diplôme d'Etudes Spécialisées"

* qualification.code.coding[degreeR50] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR50].system = "https://mos.esante.gouv.fr/NOS/TRE_R50-DESCGroupe1Diplome/FHIR/TRE-R50-DESCGroupe1Diplome" (exactly)
* qualification.code.coding[degreeR50] ^short = "DESC Groupe 1 (diplôme)"

* qualification.code.coding[degreeR51] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR51].system = "https://mos.esante.gouv.fr/NOS/TRE_R51-DESCGroupe2Diplome/FHIR/TRE-R51-DESCGroupe2Diplome" (exactly)
* qualification.code.coding[degreeR51] ^short = "DESC Groupe 2 (diplôme)"

* qualification.code.coding[degreeR52] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR52].system = "https://mos.esante.gouv.fr/NOS/TRE_R52-CapaciteDiplome/FHIR/TRE-R52-CapaciteDiplome" (exactly)
* qualification.code.coding[degreeR52] ^short = "Capacité (diplôme)"

* qualification.code.coding[degreeR53] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR53].system = "https://mos.esante.gouv.fr/NOS/TRE_R53-DiplomePaysEEE/FHIR/TRE-R53-DiplomePaysEEE" (exactly)
* qualification.code.coding[degreeR53] ^short = "Diplôme d'un pays de l'EEE"

* qualification.code.coding[degreeR54] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR54].system = "https://mos.esante.gouv.fr/NOS/TRE_R54-DiplomeUniversiteInterUniversitaire/FHIR/TRE-R54-DiplomeUniversiteInterUniversitare" (exactly)
* qualification.code.coding[degreeR54] ^short = "Diplôme d'Université ou Inter-Universitaire"
* qualification.code.coding[degreeR54].system ^definition = "Diplôme d'Université ou Inter-Universitaire"

* qualification.code.coding[degreeR55] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR55].system = "https://mos.esante.gouv.fr/NOS/TRE_R55-CertificatEtudeSpeciale/FHIR/TRE-R55-CertificatEtudeSpeciale" (exactly)
* qualification.code.coding[degreeR55] ^short = "Certificat d'Etude Spéciale"
* qualification.code.coding[degreeR55].system ^definition = "Certificat d'Etude Spéciale"

* qualification.code.coding[degreeR56] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR56].system = "https://mos.esante.gouv.fr/NOS/TRE_R56-Attestation/FHIR/TRE-R56-Attestation" (exactly)
* qualification.code.coding[degreeR56] ^short = "Attestation"

* qualification.code.coding[degreeR57] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR57].system = "https://mos.esante.gouv.fr/NOS/TRE_R57-DiplomeEuropeenEtudeSpecialisee/FHIR/TRE-R57-DiplomeEuropeenEtudeSpecialisee" (exactly)
* qualification.code.coding[degreeR57] ^short = "Diplôme Européen d'Etudes Spécialisées"
* qualification.code.coding[degreeR57].system ^definition = "Diplôme Européen d'Etudes Spécialisées"

* qualification.code.coding[degreeR58] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR58].system = "https://mos.esante.gouv.fr/NOS/TRE_R58-AutreTypeDiplome/FHIR/TRE-R58-AutreTypeDiplome" (exactly)
* qualification.code.coding[degreeR58] ^short = "Autre type de diplôme"
* qualification.code.coding[degreeR58].system ^definition = "Autre type de diplôme"

* qualification.code.coding[degreeR226] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification.code.coding[degreeR226].system = "https://mos.esante.gouv.fr/NOS/TRE_R226-Dip2iemeCycleNQ/FHIR/TRE-R226-Dip2iemeCycleNQ" (exactly)
* qualification.code.coding[degreeR226] ^short = "Diplôme de 2ième cycle non qualifiant"