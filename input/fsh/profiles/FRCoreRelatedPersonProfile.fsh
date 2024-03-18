Profile: FRCoreRelatedPersonProfile
Parent: RelatedPerson
Id: fr-core-related-person
Title: "FR Core Related Person Profile"
Description: "Profile of the RelatedPerson resource for France | Profil de la ressource RelatedPerson pour l'usage en France"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-related-person)

* identifier 1..1
* patient only Reference(FRCorePatientProfile)

* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship contains
    RolePerson 0..1 and
    RelatedPerson 0..*

// TODO : vérifier le system qui restreint les codes possibles proposés par le VS FRCoreValueSetRelatedPersonRole. Attention, il faut un discriminant.
* relationship[RolePerson] from FRCoreValueSetRelatedPersonRole (preferred)
* relationship[RolePerson] ^short = "The nature of the relationship. Rôle de la personne. Ex : personne de confiance, aidant ..."
* relationship[RolePerson].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"

* relationship[RelatedPerson] from FRCoreValueSetRelatedPerson (preferred)
* relationship[RelatedPerson] ^short = "The nature of the relationship. Relation de la personne. Ex : Mère, époux, enfant ..."
* relationship[RelatedPerson].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

* name only FRCoreHumanNameProfile
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile