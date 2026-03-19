ValueSet: FRCoreValueSetMaritalStatus
Id: fr-core-vs-marital-status
Title: "FR Core ValueSet Marital Status ValueSet"
Description: "Patient Marital Status"
* insert SetValueset

* include codes from system fr-core-cs-marital-status
* include codes from system http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
* http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"


// SVS profile
* ^experimental = false
