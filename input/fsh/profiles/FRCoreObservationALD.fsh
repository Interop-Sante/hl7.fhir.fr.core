Profile: FRCoreObservationALD
Parent: Observation
Id: fr-core-observation-ald
Title: "FR Core Observation ALD"
Description: "French profile for an ALD (long-term condition) observation, used notably as the reason for a prescribed treatment.\r\n
Profil français pour l'observation ALD (affection de longue durée), utilisée notamment comme motif d'un traitement prescrit."

* code ^short = "Type de l'observation"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-574 "En rapport avec une ALD"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)
value='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)
"""