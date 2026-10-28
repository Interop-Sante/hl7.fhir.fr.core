Instance: FRCoreProcedureExample
InstanceOf: fr-core-procedure
Usage: #example
Description: "Exemple de ressource Procedure : appendicectomie réalisée en urgence"

* status = #completed

* code = https://smt.esante.gouv.fr/terminologie-ccam#HHFA011 "Appendicectomie, par laparotomie"

* subject = Reference(FRCorePatientINSExample)

* performedDateTime = "2024-05-12"

* encounter = Reference(FRCoreEncounterExample)

* performer.actor = Reference(FRCorePractitionerRoleExample)

* bodySite = $SCT#66754008 "appendice vermiforme"

* extension[priority].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "Très urgent"

* extension[difficulte].valueCodeableConcept = $SCT#52925006 "difficile"
