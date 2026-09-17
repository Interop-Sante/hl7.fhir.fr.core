// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/valueSets/FRValueSetMedicationTranslationDocument.fsh
ValueSet: FRCoreValueSetMedicationTranslation
Id: fr-core-vs-medication-translation
Title: "FR Core ValueSet Medication translation"
Description: "Systèmes de codification autorisés pour les médicaments : CIP, UCD, ATC, MV (médicament virtuel) et NUVA (vaccins)."
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm       // CIP : Code Identifiant de Présentation
* include codes from system https://smt.esante.gouv.fr/terminologie-cip_ucd    // UCD : Unités Communes de Dispensation
* include codes from system https://smt.esante.gouv.fr/terminologie-atc        // ATC : Classification anatomique, thérapeutique et chimique
* include codes from system https://smt.esante.gouv.fr/terminologie-medicabase // MV : Médicament Virtuel
* include codes from system https://smt.esante.gouv.fr/terminologie-nuva/      // NUVA : Nomenclature Unifiée des Vaccins

* ^experimental = false
