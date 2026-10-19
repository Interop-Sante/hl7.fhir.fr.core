// Source : https://github.com/ansforge/interop-ig-fhir-ePrescription/blob/main/input/fsh/codesystems/FrAdditionalWhenCodes.fsh
CodeSystem: FRCoreCodeSystemAdditionalWhenCodes
Id: fr-core-cs-additional-when-codes
Title: "FR Core CodeSystem Additional When Codes"
Description: "Codes additionnels pour des périodes d'occurrence qui ne sont pas définies dans FHIR."
* insert SetCodesystem

* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^count = 16
* #AGU "L'événement se produit avant [offset] le levé / event occurs [offset] before getting up"
* #PGU "L'événement se produit après [offset] le levé / event occurs [offset] after getting up"
* #AT "L'événement se produit avant [offset] la toilette / event occurs [offset] before toilette (self grooming/washing)"
* #T "L'événement se produit lors de la toilette / event occurs during toilette (self grooming/washing)"
* #PT "L'événement se produit après [offset] la toilette / event occurs [offset] after toilette (self grooming/washing)"
* #ASK "L'événement se produit avant [offset] la collation / event occurs [offset] before snack"
* #SK "L'événement se produit lors de la collation / event occurs during snack"
* #PSK "L'événement se produit après [offset] la collation / event occurs [offset] after snack"
* #AMS "L'événement se produit avant [offset] la collation du matin / event occurs [offset] before morning snack"
* #MS "L'événement se produit lors de la collation du matin / event occurs during morning snack"
* #PMS "L'événement se produit après [offset] la collation du matin / event occurs [offset] after morning snack"
* #AAS "L'événement se produit avant [offset] la collation de l'après-midi / event occurs [offset] before afternoon snack"
* #AS "L'événement se produit lors de la collation de l'après-midi / event occurs during afternoon snack"
* #PAS "L'événement se produit après [offset] la collation de l'après-midi / event occurs [offset] after afternoon snack"
* #ABT "L'événement se produit avant [offset] le coucher / event occurs [offset] before going to bed (bedtime)"
* #PBT "L'événement se produit après [offset] le coucher / event occurs [offset] after going to bed (bedtime)"

// ePrescription
* ^experimental = false
