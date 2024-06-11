CodeSystem: FRCoreCodeSystemCirconstancesSortie
Id: fr-core-cs-circonstances-sortie
Title: "FR Core CodeSystem Circonstances Sortie"
Description: "Discharge Disposition"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #2 "Mesure disciplinaire"
* #3 "Décision médicale"
* #4 "Contre avis médical"
* #5 "en attente d'examen"
* #6 "Convenance personnelle"
* #R "Essai (contexte psychiatrique)"
* #E "Evasion"
* #F "Fugue"
* #A "Absence ( < 12h)"
* #P "Permission ( <72h)"
* #S "Sortie avec programme de soins"
* #B "Départ vers MCO"
* #REO "Réorientation"
* #PSA "Patient parti sans attendre les soins"

// SCS profile
* ^experimental = false
