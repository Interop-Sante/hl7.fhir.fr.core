ValueSet: FRCoreValueSetPractitionerRoleProfession
Id: fr-core-practitioner-role-profession
Description: "The profession(s) of the practitioner."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid: 2.16.840.1.113883.2.8.1.3.23"

* ^immutable = true
* include codes from system $TRE-G15-ProfessionSante
* include codes from system $TRE-R95-UsagerTitre
* include codes from system $TRE-R94-ProfessionSocial
* include codes from system $TRE-R291-AutreProfession