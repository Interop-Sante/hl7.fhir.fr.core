Profile: FRCorePatientProfile
Parent: PatientEu
Id: fr-core-patient
Title: "FR Core Patient Profile"
Description: """Profile of the Patient resource for France. This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions.
\r\nCe profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.)"""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-patient)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    fr-core-patient-nationality named nationality 0..1 and
    FRCorePatientIdentityReliabilityExtension named identityReliability 0..* and 
    FRCorePatientDeathPlaceExtension named deathPlace 0..1 and
    FRCorePatientBirthdateUpdateIndicatorExtension named birthdateUpdateIndicator 0..1 and
    FRCorePatientMultipleBirthExtension named multipleBirth 0..1

* extension[birthPlace].valueAddress only FRCoreAddressProfile

* identifier.type from $fr-core-patient-identifier-type (extensible)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "slicing de l'identifiant Patient sur le type d'identifiant (IPP, INS-NIR, INS-NIA, etc.)"
* identifier ^slicing.rules = #open
* identifier ^short = "An identifier for this patient | Identifiant patient. Pour modéliser un patient avec une INS validée, il est nécessaire de respecter la conformité au profil FrCorePatientINS. Les identifiants NIR et NIA ne sont définis uniquement dans le cas du FRCorePatientINS."



* identifier contains
    NSS 0..1 and
    INS-C 0..* and
    NDP 0..1 and
    PI 0..* and
    RRI 0..*


* identifier[NSS] ^short = "National Health Plan Identifier | Le Numéro d'Inscription au Répertoire (NIR) de facturation permet de faire transiter le numéro de sécurité social de l’ayant droit ou du bénéfiaire (patient) / le numéro de sécurité sociale de l’ouvrant droit (assuré)."
* identifier[NSS].use 1..
* identifier[NSS].use = #official
* identifier[NSS].type 1..
* identifier[NSS].type = http://terminology.hl7.org/CodeSystem/v2-0203#NH
* identifier[NSS].system 1..
* identifier[NSS].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[NSS].value 1..

* identifier[INS-C] ^short = "Computed National Health Identifier | Identifiant National de Santé Calculé à partir des éléments de la carte vitale"
* identifier[INS-C].use 1..
* identifier[INS-C].use = #secondary
* identifier[INS-C].type 1..
* identifier[INS-C].type = $fr-core-v2-0203#INS-C "Identifiant National de Santé Calculé"
* identifier[INS-C].system 1..
* identifier[INS-C].system = "urn:oid:1.2.250.1.213.1.4.2"
* identifier[INS-C].value 1..

* identifier[NDP] ^short = "French pharmaceutical Record Identifier | Numéro de Dossier Pharmaceutique français. Celui-ci est unique."
* identifier[NDP].use 1..
* identifier[NDP].use = #secondary
* identifier[NDP].type 1..
* identifier[NDP].type = $fr-core-v2-0203#NDP "Identifiant du patient au Dossier Pharmaceutique"
* identifier[NDP].system 1..
* identifier[NDP].system = "urn:oid:1.2.250.1.176.1.2"
* identifier[NDP].value 1..

* identifier[PI] ^short = "Hospital assigned patient identifier | IPP"
* identifier[PI].use 1..
* identifier[PI].use = #usual
* identifier[PI].type 1..
* identifier[PI].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI "Patient internal identifier"
* identifier[PI].system 1..
* identifier[PI].value 1..

* identifier[RRI] ^short = "Regional Registry ID | Identifiant régional"
* identifier[RRI].use 1..
* identifier[RRI].use = #secondary
* identifier[RRI].type 1..
* identifier[RRI].type = http://terminology.hl7.org/CodeSystem/v2-0203#RRI "Regional registry ID"
* identifier[RRI].system 1..
* identifier[RRI].value 1..

* name only FRCoreHumanNameProfile
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open

* name contains
    usualName 0..* and
    officialName 0..*

// slice usualName laissée à titre d'information
* name[usualName] ^short = "Name of a human | Nom utilisé"
* name[usualName] ^definition = "A human's name with the ability to identify parts and usage | Le nom utilisé (usual) n’est transmis que s’il est défini (par exemple nom marital du conjoint)."
* name[usualName].use 1..1
* name[usualName].use = #usual

* name[officialName] ^short = "Name of a human | Nom de naissance"
* name[officialName] ^definition = "A human's name with the ability to identify parts and usage | Le nom de naissance (official) est obligatoire dans le cas où l’on véhicule l’INS et que l’identité est qualifiée (celui-ci ne doit pas être altéré)."
* name[officialName].use 1..1
* name[officialName].use = #official
* name[officialName].family 1..
* name[officialName].given 1..

* name[officialName].extension contains fr-core-patient-birth-list-given-name named birth-list-given-name 0..1

// TODO : rajouter l'extenion text


* telecom only FRCoreContactPointProfile

* gender ^definition = "French patient's gender checked with the INSi teleservice | Genre du patient. Dans le cas d'une identité récupérée par le téléservice INSi, les valeurs sont M ou F"

* birthDate ^short = "The date of birth for the french patient checked with the INSitelservice | Date de naissance du patient. Dans le cas d'une identité récupérée du téléservice INSi, la date de naissance est modifiée selon les règles du RNIV dans le cas de dates exceptionnelles."

* address only FRCoreAddressProfile

* maritalStatus from fr-core-vs-marital-status (extensible)

* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    FRCorePatientContactIdentifierExtension named contactIdentifier 0..1 and
    FRCoreCommentExtension named comment 0..1

* contact.relationship ^slicing.discriminator.type = #value
* contact.relationship ^slicing.discriminator.path = "$this"

* contact.relationship ^slicing.rules = #open
* contact.relationship contains
    Role 0..1 and
    RelationType 0..1
// TODO : discuter des cardinalités : relationship, relationship[RolePerson], relationship[RelatedPerson]

* contact.relationship[Role] from FRCoreValueSetPatientContactRole (extensible) 
//TODO : à confirmer car HL7 préconise un autre VS, à mettre à jour, utiliser FRCoreValueSetContactRelationship ?
//TODO : Adapter aux valeurs préconisées dans PAM
* contact.relationship[Role] ^short = "The nature of the relationship. Rôle de la personne. Ex : personne de confiance, aidant ..."

* contact.relationship[RelationType] from FRCoreValueSetPatientRelationType (extensible) 
//TODO : à confirmer car HL7 préconise un autre VS, à mettre à jour, utiliser FRCoreValueSetContactRelationship ?
//TODO : Adapter aux valeurs préconisées dans PAM
* contact.relationship[RelationType] ^short = "The nature of the relationship. Relation de la personne. Ex : Mère, époux, enfant ..."

* contact.name only FRCoreHumanNameProfile
* contact.telecom only FRCoreContactPointProfile
* generalPractitioner only Reference(FRCorePractitionerProfile or FRCoreOrganizationProfile or FRCorePractitionerRoleProfile)
* managingOrganization only Reference(FRCoreOrganizationProfile)
