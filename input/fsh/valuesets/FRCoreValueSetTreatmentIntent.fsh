// Source : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/valuesets/FrTreatmentIntentValueSet.fsh
ValueSet: FRCoreValueSetTreatmentIntent
Id: fr-core-vs-treatment-intent
Title: "FR Core ValueSet Treatment Intent"
Description: "Jeu de valeurs SNOMED CT pour l'intention globale du traitement (MedicationRequest)."
* insert SetValueset

* include codes from system http://snomed.info/sct
    where concept is-a #363675004
