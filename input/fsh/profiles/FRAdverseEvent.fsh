Profile: FRAdverseEvent
Parent: AdverseEvent
Id: fr-adverse-event
Title: "AdverseEvent - FR adverse event"
Description: "FRAdverseEvent permet de décrire un effet indésirable prévisible lié à un médicament"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis (required)
* category ^short = "Type d'effet indésirable"

// date de début de l'effet indésirable
// la date de fin de l'effet indésirable est à renseigner dans resultingCondition.abatementDateTime
* date 1..
* date ^short = "Date de début de l'effet indésirable"

* detected 1..
* detected ^short = "Date de détection de l'effet indésirable"

* suspectEntity 1..

* suspectEntity ^short = "Agent soupçonné d’être à l’origine de l’événement indésirable"
* suspectEntity.instance
* suspectEntity.instance only Reference(FRMedicationAdministrationDocument)
* suspectEntity.instance ^short = "Médicament, substance incriminée, posologie"

* resultingCondition
* resultingCondition only Reference(FRConditionDocument)
* resultingCondition ^short = "Réaction observée"

* suspectEntity.causality 0..1
* suspectEntity.causality ^short = "Imputabilité"

* suspectEntity.causality.assessment 1..
* suspectEntity.causality.assessment from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis (required)
* suspectEntity.causality.assessment ^short = "Niveau d'imputabilité"

* seriousness 1..
* seriousness from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)
* seriousness ^short = "Gravité de l'effet indésirable"

* outcome
* outcome from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
* outcome ^short = "Évolution de l'effet indésirable"
