// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/extensions/FRMedicationAdministrationSequenceExtension.fsh
Extension: FRCoreMedicationAdministrationSequenceExtension
Id: fr-core-medication-administration-sequence
Title: "FR Core Medication Administration Sequence Extension"
Description: "Extension permettant d'indiquer l'ordre d'une prise dans le cadre d'un schéma de traitement comportant des dosages progressifs ou fractionnés dans le contexte de MedicationAdministration."
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only integer
* valueInteger 0..1
