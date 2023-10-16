Profile: FRCorePatientProfile
Parent: Patient
Id: fr-core-patient
Title: "FR Core Patient Profile"
Description: """Profile of the Patient resource for France | Profil de la ressource Patient pour l'usage en France
This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions | Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France."""
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $patient-nationality named nationality 0..1 and
    FRCorePatientIdentReliabilityExtension named identityReliability 1..1 and
    FRCorePatientDeathPlaceExtension named deathPlace 0..1 and
    FRCorePatientIdentityMethodCollectionExtension named identityMethodCollection 0..1 and
    FRCorePatientBirthdateUpdateIndicatorExtension named birthdateUpdateIndicator 0..1 and
    http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1

* extension[identityReliability].extension ^slicing.discriminator.type = #value
* extension[identityReliability].extension ^slicing.discriminator.path = "url"
* extension[identityReliability].extension ^slicing.rules = #open
* extension[identityReliability].extension[validationMode] ^short = "Mode de validation de l'identité (avec quelle pièce officielle?)"

* extension[birthPlace].valueAddress only FRCoreAddressProfile

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "slicing de l'identifiant Patient sur le type d'identifiant (IPP, INS-NIR, INS-NIA, etc.)"
* identifier ^slicing.rules = #open
* identifier ^short = "National Health Identifier | Identifiant national de santé"
* identifier contains
    INS-NIR 0..* and
    INS-NIA 0..* and
    INS-C 0..* and
    NDP 0..1 and
    PI 0..1 and
    RRI 0..1

* identifier[INS-NIR] ^short = "The patient's health national identifier INS coming from the INSi teleservice| Identifiant national de santé du patient INS provenant du téléservice INSi"
* identifier[INS-NIR] ^definition = "patient's national identifier obtained by requesting the national patient identification service (CNAM) | Identifiant NIR du patient récupéré à partir de l'interrogation du service national d'identification des patients (CNAM)"
* identifier[INS-NIR].use = #official
* identifier[INS-NIR].type 1..
* identifier[INS-NIR].type = $fr-core-v2-0203#INS-NIR "NIR"
* identifier[INS-NIR].type from $fr-core-patient-identifier-type (extensible)
* identifier[INS-NIR].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[INS-NIR].type ^binding.extension[=].valueBoolean = true
* identifier[INS-NIR].system 1..
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].system ^definition = "Establishes the namespace for the value - that is, a OID that describes a set values that are unique. | Autorité d'affectation des INS-NIR"
* identifier[INS-NIR].value 1..

* identifier[INS-NIA] ^short = "INS-NIA"
* identifier[INS-NIA] ^definition = "The temporary patient's health national identifier obtained by requesting the national patient identification service (CNAM)| Identifiant national temporaire de santé du patient obtenu par interrogation du téléservice INSi de la CNAM"
* identifier[INS-NIA].use = #temp
* identifier[INS-NIA].type 1..
* identifier[INS-NIA].type = $fr-core-v2-0203#INS-NIA "NIA"
* identifier[INS-NIA].type from $fr-core-patient-identifier-type (extensible)
* identifier[INS-NIA].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[INS-NIA].type ^binding.extension[=].valueBoolean = true
* identifier[INS-NIA].system 1..
* identifier[INS-NIA].system = "urn:oid:1.2.250.1.213.1.4.9"
* identifier[INS-NIA].system ^definition = "Establishes the namespace for the value - that is, a OID that describes a set values that are unique. | Autorité d'affectation des INS-NIA"
* identifier[INS-NIA].value 1..

* identifier[INS-C] ^definition = "Computed National Health Identifier | Identifiant National de Santé Calculé à partir des éléments de la carte vitale"
* identifier[INS-C].use = #secondary
* identifier[INS-C].type 1..
* identifier[INS-C].type = $fr-core-v2-0203#INS-C "INS calculé"
* identifier[INS-C].type from $fr-core-patient-identifier-type (extensible)
* identifier[INS-C].type ^definition = "Computed National Health Identifier | Identifiant National de Santé Calculé à partir des éléments de la carte vitale"
* identifier[INS-C].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[INS-C].type ^binding.extension[=].valueBoolean = true
* identifier[INS-C].system 1..
* identifier[INS-C].system = "urn:oid:1.2.250.1.213.1.4.2"
* identifier[INS-C].value 1..

* identifier[NDP] ^short = "French pharmaceutical Record Identifier | Numéro de Dossier Pharmaceutique français"
* identifier[NDP] ^definition = "Pharmaceutical Record Identifier | Numéro de Dossier Pharmaceutique"
* identifier[NDP].use = #secondary
* identifier[NDP].type 1..
* identifier[NDP].type = $fr-core-v2-0203#NDP "Identifiant au dossier pharmaceutique"
* identifier[NDP].type from $fr-core-patient-identifier-type (extensible)
* identifier[NDP].type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier[NDP].type ^binding.extension[=].valueString = "IdentifierType"
* identifier[NDP].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[NDP].type ^binding.extension[=].valueBoolean = true
* identifier[NDP].system 1..
* identifier[NDP].system = "urn:oid:1.2.250.1.176.1.2"
* identifier[NDP].value 1..

* identifier[PI] ^short = "Hospital assigned patient identifier | IPP"
* identifier[PI] ^definition = "Hospital assigned patient identifier | IPP"
* identifier[PI].use = #usual
* identifier[PI].type 1..
* identifier[PI].type = $fr-core-v2-0203#PI "Patient internal identifier"
* identifier[PI].type from $fr-core-patient-identifier-type (extensible)
* identifier[PI].type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* identifier[PI].type ^binding.extension[=].valueString = "IdentifierType"
* identifier[PI].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[PI].type ^binding.extension[=].valueBoolean = true
* identifier[PI].system 1..
* identifier[PI].value 1..
* identifier[RRI] ^short = "Regional Registry ID | Identifiant régional"
* identifier[RRI] ^definition = "Regional Registry ID | Identifiant régional"
* identifier[RRI].use = #secondary
* identifier[RRI].type 1..
* identifier[RRI].type = $fr-core-v2-0203#RRI "Regional registry ID"
* identifier[RRI].type from $fr-core-patient-identifier-type (extensible)
* identifier[RRI].type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* identifier[RRI].type ^binding.extension[=].valueBoolean = true
* identifier[RRI].system 1..
* identifier[RRI].value 1..

* name 1..
* name only FRCoreHumanNameProfile
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    usualName 0..* and
    officialName 0..*

* name[usualName] only FRCoreHumanNameProfile
* name[usualName] ^short = "Name of a human | Nom utilisé"
* name[usualName] ^definition = "A human's name with the ability to identify parts and usage | Le nom utilisé (usual) n’est transmis que s’il est défini (par exemple nom marital du conjoint)."
* name[usualName].use 1..
* name[usualName].use = #usual

* name[officialName] only FRCoreHumanNameProfile
* name[officialName] ^short = "Name of a human | Nom de naissance"
* name[officialName] ^definition = "A human's name with the ability to identify parts and usage | Le nom de naissance (official) est obligatoire dans le cas où l’on véhicule l’INS et que l’identité est qualifiée (celui-ci ne doit pas être altéré)."
* name[officialName].use 1..
* name[officialName].use = #official
* name[officialName].family 1..
* name[officialName].given 1..1

* telecom only FRCoreContactPointProfile
* gender 1..
* gender ^definition = "French patient's gender checked with the INSi teleservice | Genre du patient. Dans le cas d'une identité récupérée par le téléservice INSi, les valeurs sont M ou F"
* birthDate 1..
* birthDate ^short = "The date of birth for the french patient checked with the INSitelservice | Date de naissance du patient. Dans le cas d'une identité récupérée du téléservice INSi, la date de naissance est modifiée selon les règles du RNIV dans le cas de dates exceptionnelles."
* birthDate ^definition = "The date of birth for the french patient checked with the INSitelservice | Date de naissance du patient. Dans le cas d'une identité récupérée du téléservice INSi, la date de naissance est modifiée selon les règles du RNIV dans le cas de dates exceptionnelles."

* address only FRCoreAddressProfile
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    FRCorePatientContactIdentifierExtension named contactIdentifier 1..1 and
    FRCoreCommentExtension named comment 0..1

* contact.relationship 1..1
* contact.relationship ^slicing.discriminator.type = #value
* contact.relationship ^slicing.discriminator.path = "coding.system"
* contact.relationship ^slicing.rules = #open
* contact.relationship contains
    RolePerson 0..1 and
    RelatedPerson 0..1

* contact.relationship[RolePerson] from FRCoreValueSetRelatedPersonRole (extensible) //TODO : à confirmer car HL7 préconise un autre VS, à mettre à jour, utiliser FRCoreValueSetContactRelationship ?
* contact.relationship[RolePerson] ^short = "The nature of the relationship. Rôle de la personne"
* contact.relationship[RolePerson] ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.relationship[RolePerson] ^binding.extension[=].valueString = "ContactRelationship"
* contact.relationship[RolePerson].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"

* contact.relationship[RelatedPerson] from FRCoreValueSetRelatedPerson (extensible) //TODO : à confirmer car HL7 préconise un autre VS, à mettre à jour, utiliser FRCoreValueSetContactRelationship ?
* contact.relationship[RelatedPerson] ^short = "The nature of the relationship. Relation de la personne"
* contact.relationship[RelatedPerson] ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.relationship[RelatedPerson] ^binding.extension[=].valueString = "ContactRelationship"
* contact.relationship[RelatedPerson].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

* contact.name only FRCoreHumanNameProfile
* contact.telecom only FRCoreContactPointProfile
* generalPractitioner only Reference(FRCorePractitionerProfile or FRCoreOrganizationProfile or PractitionerRole)
* managingOrganization only Reference(FRCoreOrganizationProfile)