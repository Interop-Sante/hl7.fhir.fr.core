Profile: FRCoreObservationWorkRelatedAccident
Parent: Observation
Id: fr-core-observation-work-related-accident
Title: "Observation - FR Core Observation Work Related Accident"
Description: "French profile for a work-related accident or occupational disease observation, used notably as the reason for a prescribed treatment.\r\n
Profil français pour l'observation en rapport avec un accident du travail ou une maladie professionnelle, utilisée notamment comme motif d'un traitement prescrit."

* code ^short = "Type de l'observation"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-180 "En rapport avec un accident du travail ou une maladie professionnelle"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'un accident du travail
value='false' : le traitement n'est pas prescrit dans le cadre d'un accident du travail
"""