ValueSet: FRCoreValueSetPractitionerRoleExercice
Id: fr-core-practitioner-role-exercice
Title: "FR Core ValueSet PractitionerRole Exercice"
Description: "The exercice(s) of the practitioner."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid: 2.16.840.1.113883.2.8.1.3.23"

* ^immutable = true
* include codes from system $TRE-R21-Fonction
* include codes from system $TRE-R96-AutreFonctionSanitaire
* include codes from system $TRE-R85-RolePriseCharge


// SVS profile
* ^experimental = false