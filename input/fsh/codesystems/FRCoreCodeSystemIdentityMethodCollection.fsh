CodeSystem: FRCoreCodeSystemMethodCollection
Id: fr-core-cs-method-collection
Title: "FR Core CodeSystem Method Collection"
Description: "Méthode de collection de l'identité"
* insert SetCodesystem

* ^caseSensitive = true
* ^content = #complete

// Références : RNIV 1 - Principes communs, v2.0 (décembre 2024) ; Guide d'implémentation de l'INS, v3.0 (décembre 2024)
* #SM	"Saisie manuelle" "Saisie manuelle des traits d'identité, sans lecture de la carte Vitale ni interrogation du téléservice INSi." // RNIV 1 v2.0, §4.3.3
* #CV	"Carte Vitale" "Lecture de la carte Vitale physique de l'usager, permettant l'interrogation du téléservice INSi par ce canal." // RNIV 1 v2.0, §4.3.2
* #INSI	"Téléservice INSi" "Interrogation directe du téléservice INSi par saisie des traits d'identité, sans lecture de la carte Vitale." // RNIV 1 v2.0, §4.3.3
* #CB	"Code à barre" "Import de l'identité par scan du Datamatrix INS figurant sur un document de santé déjà porteur d'une identité qualifiée." // Guide d'implémentation INS v3.0, EXI REC 02
* #RFID	"Puce RFID" "Lecture d'une puce RFID (ex. bracelet patient) ; canal local de traçabilité, non défini par le RNIV."
* #AV	"Application carte Vitale" "Obtention directe de l'INS par scan du QR code ou lecture NFC de l'Application carte Vitale ; l'identité ainsi obtenue est considérée comme qualifiée." // RNIV 1 v2.0, §4.3.4

// SCS profile
* ^experimental = false