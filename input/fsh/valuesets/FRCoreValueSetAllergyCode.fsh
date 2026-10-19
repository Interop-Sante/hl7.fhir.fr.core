ValueSet: FRCoreValueSetAllergyCode
Id: fr-core-vs-allergy-code
Title: "FR Core ValueSet Allergy Code"
Description: """Jeu de valeurs permettant de coder l'agent responsable d'une allergie :
- Médicaments : CIP ou UCD
- Substances : SMS
- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis"""
* insert SetValueset

// Médicaments : code CIP
* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm
// Médicaments : code UCD
* include codes from system https://smt.esante.gouv.fr/terminologie-cip_ucd
// Aliments ou agents environnementaux/physiques : CIM-11 Chapitre X Extensions, bloc "Substances, essentiellement non médicinales"
* include codes from system https://smt.esante.gouv.fr/terminologie-cim11-mms where concept is-a #XM9N55
// Allergènes pouvant induire une contre-indication vaccinale
* include codes from valueset https://smt.esante.gouv.fr/fhir/ValueSet/jdv-allergie-vaccin-cisis
// Substances : code SMS
* include codes from system https://smt.esante.gouv.fr/terminologie-sms

// SVS profile
* ^experimental = false
