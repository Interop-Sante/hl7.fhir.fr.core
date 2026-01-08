Extension: FRCorePatientDeathPlaceExtension
Id: fr-core-patient-death-place
Title: "FR Core Patient Death Place Extension"
Description: "Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).\n\rCarries the death place of the patient"
* ^purpose = "Place where the patient is dead."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only FRCoreAddressProfile
* valueAddress ^short = "Lieu de décès du patient | Place where the patient is dead"