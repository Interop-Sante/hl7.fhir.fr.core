CodeSystem: FRCoreCodeSystemMethodCollection
Id: fr-core-cs-method-collection
Title: "FR Core CodeSystem Mode Validation Identite"
Description: "Méthode de collection de l'identité"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^caseSensitive = true
* ^content = #complete
* #SM	"Saisie manuelle"
* #CV	"Carte vitale"
* #INSI	"Téléservice INSI"
* #CB	"Code à barre"
* #RFID	"Puce RFID"

// SCS profile
* ^experimental = false