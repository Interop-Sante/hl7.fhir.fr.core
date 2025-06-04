ValueSet: FRCoreValueSetPatientIdentifierUse
Id: fr-core-vs-patient-identifier-use
Title: "FR Core ValueSet Patient identifier use"
Description: """
Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP).
Authorized use for PI identifier.
"""

* ^meta.profile = $shareablevalueset
// SVS profile
* ^experimental = false

* include codes from valueset $identifier-use-vs
* exclude $identifier-use-cs#official
