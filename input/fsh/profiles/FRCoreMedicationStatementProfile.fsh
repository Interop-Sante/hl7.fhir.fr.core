Profile: FRCoreMedicationStatementProfile
Parent: MedicationStatement
Id: fr-core-medication-statement
Title: "FR Core MedicationStatement Profile"
Description: "FRCoreMedicationStatementProfile permet de décrire les modalités d'administration d'un médicament au patient (médicament déclaré, mode d'administration, quantité, durée et fréquence). Couvre les bilans médicamenteux et conciliations médicamenteuses."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-medication-statement)

* basedOn only Reference(FRCoreMedicationRequestProfile)
* basedOn ^short = "Prescription"

* partOf only Reference(FRCoreMedicationAdministrationProfile)
* partOf ^short = "Administration associée"

* category ^short = "Acte ou situation"

* status ^short = "Statut"

* effective[x] only Period
* effectivePeriod ^short = "Durée du traitement"

* dosage.timing ^short = "Fréquence d'administration"
* dosage.sequence ^short = "Séquence (dosages progressifs/fractionnés)"
* dosage.asNeeded[x] ^short = "Dosage conditionnel"
* dosage.route from FRCoreValueSetEDQMRoute (extensible)
* dosage.route ^short = "Voie d'administration"
* dosage.route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)"
* dosage.site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (extensible)
* dosage.site ^short = "Région anatomique d'administration"
* dosage.doseAndRate.doseQuantity ^short = "Dose déclarée"
* dosage.maxDosePerPeriod ^short = "Dose maximale"
* dosage.doseAndRate.rateQuantity ^short = "Rythme d'administration"
* dosage.additionalInstruction ^short = "Instructions au patient (codé)"
* dosage.additionalInstruction.text ^short = "Instruction au patient (texte libre)"

* medication[x] only CodeableConcept or Reference(FRCoreMedicationProfile)
* medication[x] ^short = "Médicament"

* reasonReference only Reference(FRCoreConditionProfile or Condition or Observation)
* reasonReference ^short = "Motif du traitement"
