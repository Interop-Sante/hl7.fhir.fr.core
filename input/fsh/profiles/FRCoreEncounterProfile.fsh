// Pas de profil EU Core disponible pour cette ressource
// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FREncounterDocument.fsh
//
// Profil EU Core (héritage direct) : non disponible
Profile: FRCoreEncounterProfile
Parent: Encounter
Id: fr-core-encounter
Title: "FR Core Encounter Profile"
Description: "This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay.\r\n
Ce profil de la ressource Encounter sert à la fois à définir la venue dans l'établissement et à représenter les mouvements du patient qui découpent cette venue."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-encounter)

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
* identifier.system ^example[=].valueUri = "urn:oid:1.2.250.1.71.4.2.2.1330780321"
* identifier.system ^example[+].label = "autre solution, utilisation d'une URL"
* identifier.system ^example[=].valueUri = "http://encounter-identifier-system.org"
* identifier.value 1..
* identifier.assigner only Reference(FRCoreOrganizationProfile)

* class.system 1..
* class.code 1..
* type from FRCoreValueSetEncounterType (example)
* type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EncounterType"
* subject only Reference(FRCorePatientProfile or Group)
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
* location.location only Reference(FRCoreLocationProfile)

* location.physicalType from FRCoreValueSetLocationType (example)

* serviceProvider only Reference(FRCoreOrganizationProfile)

* partOf only Reference(FRCoreEncounterProfile)

// ── Contraintes dérivées de IG Document Core ─────────────────────────────────────────────────────

* class ^short = "Type de rencontre (codes HL7 ActEncounterCode ou codes spécifiques au volet)"
* class from FRValueSetEncounterClass (extensible) // Contrainte ajoutée uniquement par IG Document Core

* status ^short = "Statut de la rencontre (finished | planned | proposed)"
* obeys fr-encounter-status // Invariant ajouté par IG Document Core

* period ^short = "Date début et fin de la rencontre
Si la rencontre est réalisée ou planifiée : la date est obligatoire.
Si la rencontre est prévue non confirmée : la date est facultative."

* priority ^short = """
Si la rencontre est prévue non confirmée et qu'une confirmation est attendue :
code='CS', display='callback for scheduling'
Sinon, l'élément 'priority' n'est pas fourni.
"""

// * subject only Reference(FRCorePatientINSProfile or FRCorePatientProfile) // Doc Core : retire Group, ajoute FRCorePatientINSProfile — non appliqué (FRCoreEncounterProfile contraint déjà : Reference(FRCorePatientProfile or Group))

* participant ^short = "Liste des participants impliqués dans la rencontre"
// Commenté car spécifique document
// * participant.individual.extension contains
//     FRActorExtension named executant 0..* and
//     FRActorExtension named author 0..* and
//     FRActorExtension named informant 0..*

// * participant.individual.extension[executant] ^short = "Exécutant :
// Si la rencontre est réalisée :
//  au moins 1 exécutant doit être renseigné.
// Sinon : l'exécutant n'est pas obligatoire mais peut être renseigné"
// * participant.individual.extension[executant].extension[type].valueCode = #PRF

// * participant.individual.extension[author] ^short = "Author"
// * participant.individual.extension[author].extension[type].valueCode = #AUT

// * participant.individual.extension[informant] ^short = "Informant"
// * participant.individual.extension[informant].extension[type].valueCode = #INF

* location 0..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* location ^short = "Lieu d'exécution"
// * location.location only Reference(FRLocationDocument) // Doc Core — FRCoreEncounterProfile contraint déjà : only Reference(FRCoreLocationProfile) ; FRLocationDocument à remplacer par un profil FRCore équivalent

* hospitalization ^short = "Informations sur l'hospitalisation associée à la rencontre"
* hospitalization.admitSource ^short = "Modalité d'entrée du patient lors de la rencontre"
* hospitalization.admitSource from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis (required) // Contrainte ajoutée uniquement par IG Document Core
* hospitalization.dischargeDisposition ^short = "Modalité de sortie du patient lors de la rencontre:
Valeur provenant du jdv-modalite-sortie-cisis ou autre JDV spécifique au volet"
// * hospitalization.dischargeDisposition from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis (preferred) // Doc Core — conflict avec le binding FRCoreValueSetEncounterDischargeDisposition (example) existant ; à arbitrer

Invariant: fr-encounter-status
Description: "Le statut de la rencontre doit être 'finished' (rencontre réalisée), 'planned' (rencontre planifiée) ou 'proposed' (rencontre prévue mais non confirmée)."
Severity: #error
Expression: "status = 'finished' or status = 'planned' or status = 'proposed'"
