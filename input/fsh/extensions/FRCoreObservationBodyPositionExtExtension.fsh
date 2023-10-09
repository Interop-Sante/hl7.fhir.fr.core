Extension: FRCoreObservationBodyPositionExtExtension
Id: fr-core-observation-body-position-ext
Title: "FR Core Observation Body Position Ext Extension"
Description: "CIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation | Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire."
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* value[x] from $ValueSet-bodyPositionVS.html (example)