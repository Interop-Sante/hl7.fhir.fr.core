CodeSystem: FRCoreCodeSystemIdentityReliability
Id: fr-core-cs-identity-reliability
Title: "FR Core CodeSystem Fiabilité Identité"
Description: "CodeSystem permettant d'indiquer la fiabilité d'une identité."
* insert SetCodesystem

* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #PROV "Identité provisoire" "Identité provisoire"
* #VALI "Identité validée" "Identité validée"
* #RECUP "Identité récupérée" "Identité récupérée"
* #QUAL "Identité qualifiée" "Identité qualifiée"

// SCS profile
* ^experimental = false