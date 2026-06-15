Profile: FRAllergyIntolerance
Parent: AllergyIntolerance
Id: fr-allergy-intolerance
Title: "AllergyIntolerance - FR Allergy and intolerance"
Description: "FRAllergyIntolerance est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..*
* identifier ^short = "Identifiant"
* type
* type ^short = "Type d'allergie ou d'intolérance"
* type from FRValueSetAllergyInoleranceTypeDocument (required)
* code 1..1
* code ^short = "agent allergique"
* code from FRValueSetAllergyCodeDocument (extensible)
* onset[x]
* onset[x] ^short = "Date d'identification d'allergie ou d'intolérance"
* onsetPeriod
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1

* criticality
* criticality ^short = "Criticité"

* verificationStatus
* verificationStatus ^short = "Certitude"

* clinicalStatus
* clinicalStatus ^short = "Statut clinique"

* patient
* patient ^short = "Patient concerné par l'allergie ou intolérance"
* patient only Reference(FRPatientINSDocument or FRPatientDocument)

* reaction
* reaction ^short = "Réaction observée"

* reaction.substance
* reaction.substance ^short = "Substance responsable de la réaction"
* reaction.substance from FRValueSetAllergySubstanceDocument (required)

* reaction.manifestation
* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l’événement"

* reaction.severity
* reaction.severity ^short = "Sévérité"

* reaction.note 0..1
* reaction.note ^short = "Commentaire"

* reaction.onset
* reaction.onset ^short = "Dates de début et de fin du problème"
