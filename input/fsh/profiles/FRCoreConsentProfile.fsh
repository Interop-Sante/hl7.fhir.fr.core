Profile: FRCoreConsentProfile
Parent: Consent
Id: fr-core-consent
Title: "FR Core Consent Profile"
Description: """Profile of the Consent resource for France. A record of a healthcare consumer's choices, which permits or denies identified recipients or recipient roles to perform one or more actions within a given policy context, for specific purposes and periods of time.\r\n
Profil de la ressource Consent pour la France. Enregistrement des choix d'une personne qui autorise ou refuse à des destinataires ou rôles identifiés d'effectuer une ou plusieurs actions dans un contexte de politique donné, pour des finalités et des périodes données."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-consent)

* patient only Reference(FRCorePatientProfile or Patient)

* performer only Reference(FRCoreOrganizationProfile or Organization or FRCorePatientProfile or Patient or FRCorePractitionerProfile or Practitioner or FRCoreRelatedPersonProfile or RelatedPerson or FRCorePractitionerRoleProfile or PractitionerRole)
