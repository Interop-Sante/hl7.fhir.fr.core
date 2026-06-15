// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRAdverseEventDocument.fsh
//
// Profil EU Core (héritage direct) : non disponible
Profile: FRCoreAdverseEventProfile
Parent: AdverseEvent
Id: fr-core-adverse-event
Title: "FR Core AdverseEvent Profile"
Description: "FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament"

* category 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis (required)
* category ^short = "Type d'effet indésirable"

// date de début de l'effet indésirable
// la date de fin de l'effet indésirable est à renseigner dans resultingCondition.abatementDateTime
* date 1.. // Contrainte ajoutée uniquement par IG Document Core — ⚠ élément FHIR R4 (renommé occurrence[x] en R5, R4 base : 0..1)
* date ^short = "Date de début de l'effet indésirable"

* detected 1.. // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* detected ^short = "Date de détection de l'effet indésirable"

* suspectEntity 1.. // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)

* suspectEntity ^short = "Agent soupçonné d'être à l'origine de l'événement indésirable"
* suspectEntity.instance only Reference(FRMedicationAdministrationDocument)
* suspectEntity.instance ^short = "Médicament, substance incriminée, posologie"

* resultingCondition only Reference(FRConditionDocument)
* resultingCondition ^short = "Réaction observée"

* suspectEntity.causality 0..1 // FHIR R5 base : 0..1 — cardinalité identique
* suspectEntity.causality ^short = "Imputabilité"

* suspectEntity.causality.assessment 1.. // Contrainte ajoutée uniquement par IG Document Core — ⚠ élément FHIR R4 (renommé assessmentMethod en R5, R4 base : 0..1)
* suspectEntity.causality.assessment from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis (required)
* suspectEntity.causality.assessment ^short = "Niveau d'imputabilité"

* seriousness 1.. // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* seriousness from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)
* seriousness ^short = "Gravité de l'effet indésirable"

* outcome from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
* outcome ^short = "Évolution de l'effet indésirable"
