CodeSystem: FRCoreCodeSystemMethodCollection
Id: fr-core-cs-method-collection
Title: "FR Core CodeSystem Method Collection"
Description: "Méthode de collection de l'identité"
* insert SetCodesystem

* ^caseSensitive = true
* ^content = #complete
* #SM	"Saisie manuelle" "Saisie manuelle des traits d'identité, sans lecture de la carte Vitale ni interrogation du téléservice INSi (RNIV §4.3.3)."
* #CV	"Carte Vitale" "Lecture de la carte Vitale physique de l'usager, permettant l'interrogation du téléservice INSi par ce canal (RNIV §4.3.2)."
* #INSI	"Téléservice INSi" "Interrogation directe du téléservice INSi par saisie des traits d'identité, sans lecture de la carte Vitale (RNIV §4.3.3)."
* #CB	"Code à barre" "Import de l'identité par scan du Datamatrix INS figurant sur un document de santé déjà porteur d'une identité qualifiée (Guide d'implémentation INS, EXI REC 02)."
* #RFID	"Puce RFID" "Lecture d'une puce RFID (ex. bracelet patient) ; canal local de traçabilité, non défini par le RNIV."
* #AV	"Application carte Vitale" "Obtention directe de l'INS par scan du QR code ou lecture NFC de l'Application carte Vitale (RNIV §4.3.4) ; l'identité ainsi obtenue est considérée comme qualifiée."

// SCS profile
* ^experimental = false