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

* status ^short = "draft | proposed | active | rejected | inactive | entered-in-error | Statut du consentement"
* status MS

* scope ^short = "Which of the four areas this resource covers (extensible) | Portée du consentement (vie privée, recherche, traitement, directive anticipée...)"
* scope MS

* category ^short = "Classification of the consent statement - for indexing/retrieval | Classification du consentement, utile pour l'indexation et la recherche"
* category MS

* patient ^short = "Who the consent applies to | Personne concernée par le consentement"
* patient MS
* patient only Reference(FRCorePatientProfile or Patient)

* dateTime ^short = "When this Consent was created or indexed | Date de création ou d'indexation du consentement"
* dateTime MS

* performer ^short = "Who is agreeing to the policy and rules | Partie qui accepte la politique et les règles (représentant légal ou personne elle-même, ou organisation)"
* performer MS
* performer only Reference(FRCoreOrganizationProfile or Organization or FRCorePatientProfile or Patient or FRCorePractitionerProfile or Practitioner or FRCoreRelatedPersonProfile or RelatedPerson or FRCorePractitionerRoleProfile or PractitionerRole)

* organization ^short = "Custodian of the consent | Organisation responsable de la gestion du consentement"
* organization MS
* organization only Reference(FRCoreOrganizationProfile or Organization)

* provision ^short = "Constraints to the base Consent.policyRule | Règles précises du consentement (autorisations/refus, finalités, périmètre)"
* provision MS
* provision.type ^short = "deny | permit | Action à appliquer si les conditions de la règle sont remplies"
* provision.type MS
* provision.purpose ^short = "Context of activities for which the agreement is made | Finalité(s) pour laquelle le consentement est donné (ex. v3-PurposeOfUse)"
* provision.purpose MS
* provision.code ^short = "e.g. Resource Type, Code, or Data Period | Code(s) précisant le périmètre d'information couvert par la règle"
* provision.code MS
* provision.actor ^short = "Who|what controlled by this rule (or group, by role) | Acteur(s) concerné(s) par la règle (bénéficiaire ou exclu)"
* provision.actor MS
