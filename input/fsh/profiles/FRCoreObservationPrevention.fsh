Profile: FRCoreObservationPrevention
Parent: Observation
Id: fr-core-observation-prevention
Title: "FR Core Observation Prevention"
Description: "French profile for a prevention observation, used notably as the reason for a prescribed treatment.\r\n
Profil français pour l'observation en rapport avec la prévention, utilisée notamment comme motif d'un traitement prescrit."

* code ^short = "Type de l'observation"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-295 "En rapport avec la prévention"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une prévention
value='false' : le traitement n'est pas prescrit dans le cadre d'une prévention
"""