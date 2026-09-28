Instance: FRCoreImmunizationExample
InstanceOf: fr-core-immunization
Usage: #example
Description: "Exemple de ressource Immunization : vaccination antigrippale"

* status = #completed

* vaccineCode.coding[cis] = https://smt.esante.gouv.fr/terminologie-bdpm#61402736 "VAXIGRIPTETRA, suspension injectable en seringue préremplie. Vaccin grippal quadrivalent (inactivé, à virion fragmenté)"

* patient = Reference(FRCorePatientINSExample)

* occurrenceDateTime = "2024-10-15"

* route = https://smt.esante.gouv.fr/terminologie-standardterms#20035000 "Voie intramusculaire"

* site = $SCT#16217661000119109 "deltoïde droit"

* doseQuantity = 0.5 'mL'

* lotNumber = "K123AB"
* expirationDate = "2025-06-30"

* protocolApplied.series = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMMUNIZ "Vaccination sans autre précision"
* protocolApplied.doseNumberPositiveInt = 1
