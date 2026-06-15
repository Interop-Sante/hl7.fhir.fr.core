Profile: FREncounterDocument
Parent: FRCoreEncounterProfile
Id: fr-encounter-document
Title: "Encounter - FR Encounter Document"
Description: "FREncounterDocument est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant de la rencontre"

* class MS
* class ^short = "Type de rencontre (codes HL7 ActEncounterCode ou codes spécifiques au volet)"
* class from FRValueSetEncounterClass (extensible)

* status MS
* status ^short = "Statut de la rencontre (finished | planned | proposed)"
* obeys fr-encounter-status

* period MS
* period ^short = "Date début et fin de la rencontre
Si la rencontre est réalisée ou planifiée : la date est obligatoire.
Si la rencontre est prévue non confirmée : la date est facultative."

* priority MS
* priority ^short = """
Si la rencontre est prévue non confirmée et qu'une confirmation est attendue :
code='CS', display='callback for scheduling'
Sinon, l'élément 'priority' n'est pas fourni.
"""

* subject only Reference(FRPatientINSDocument or FRPatientDocument)

* participant MS
* participant ^short = "Liste des participants impliqués dans la rencontre"
* participant.individual.extension contains
    FRActorExtension named executant 0..* and
    FRActorExtension named author 0..* and
    FRActorExtension named informant 0..*

* participant.individual.extension[executant] ^short = "Exécutant : 
Si la rencontre est réalisée :
 au moins 1 exécutant doit être renseigné.
Sinon : l'exécutant n'est pas obligatoire mais peut être renseigné"
* participant.individual.extension[executant].extension[type].valueCode = #PRF

* participant.individual.extension[author] ^short = "Author"
* participant.individual.extension[author].extension[type].valueCode = #AUT

* participant.individual.extension[informant] ^short = "Informant"
* participant.individual.extension[informant].extension[type].valueCode = #INF

* location 0..1 MS
* location ^short = "Lieu d'exécution"
* location.location only Reference(FRLocationDocument)

* hospitalization MS
* hospitalization ^short = "Informations sur l'hospitalisation associée à la rencontre"
* hospitalization.admitSource ^short = "Modalité d'entrée du patient lors de la rencontre"
* hospitalization.admitSource from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis (required)
* hospitalization.dischargeDisposition ^short = "Modalité de sortie du patient lors de la rencontre: 
Valeur provenant du jdv-modalite-sortie-cisis ou autre JDV spécifique à un volet"
* hospitalization.dischargeDisposition from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis (preferred)

Invariant: fr-encounter-status
Description: "Le statut de la rencontre doit être 'finished' (rencontre réalisée), 'planned' (rencontre planifiée) ou 'proposed' (rencontre prévue mais non confirmée)."
Severity: #error
Expression: "status = 'finished' or status = 'planned' or status = 'proposed'"
