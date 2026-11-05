Extension: FRCoreMethodExtension
Id: fr-core-method-extension
Title: "FR Core Method Extension"
Description: "Extension permettant d'indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d'imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc."
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Méthode utilisée"
* valueCodeableConcept ^binding.description = "Jeu de valeur donné à titre d'exemple devant être adapté par cas d'usage (anapat, biologie, ...)"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis (example)
