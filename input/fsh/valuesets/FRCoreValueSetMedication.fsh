ValueSet: FRCoreValueSetMedication
Id: fr-core-vs-medication
Title: "FR Core ValueSet Medication"
Description: "Systèmes de codification autorisés pour les médicaments : CIP, CIS, UCD, ATC, MV (médicament virtuel), NUVA (vaccins) et SMS (substances)."
* insert SetValueset
* ^experimental = false

* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm       // CIP : Code Identifiant de Présentation et CIS : Code Identifiant de Spécialité (tous deux inclus dans la BDPM)
* include codes from system https://smt.esante.gouv.fr/terminologie-cip_ucd    // UCD : Unités Communes de Dispensation
* include codes from system https://smt.esante.gouv.fr/terminologie-atc        // ATC : Classification anatomique, thérapeutique et chimique
* include codes from system https://smt.esante.gouv.fr/terminologie-medicabase // MV : Médicament Virtuel
* include codes from system https://smt.esante.gouv.fr/terminologie-nuva       // NUVA : Nomenclature Unifiée des Vaccins
* include codes from system https://smt.esante.gouv.fr/terminologie-sms        // SMS : Substances
