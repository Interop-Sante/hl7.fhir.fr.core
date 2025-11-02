CodeSystem: FRCoreCodeSystemChampActivite
Id: fr-core-cs-champ-activite
Title: "FR Core CodeSystem Champ Activite - Codes du champ d'activité"
Description: "Champ d'activité clinique de l'organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #MCO "MCO"
* #MCO ^designation[0].use = #display
* #MCO ^designation[0].value = "Médecine Chirurgie Obstétrique"
* #SMR "SMR"
* #SMR ^designation[0].use = #display
* #SMR ^designation[0].value = "Soins Médicaux et de Réadaptation"
* #HAD "HAD"
* #HAD ^designation[0].use = #display
* #HAD ^designation[0].value = "Hospitalisation à Domicile"
* #PSY "PSY"
* #PSY ^designation[0].use = #display
* #PSY ^designation[0].value = "Psychiatrie"
* #EHPAD "EHPAD"
* #EHPAD ^designation[0].use = #display
* #EHPAD ^designation[0].value = "Etablissement d'Hébergement pour Personnes Agées Dépendantes"
* #LG_SJR "Long séjour"
* #MSN_RTRT "Maison de retraite"
* #ATR "Autre"
