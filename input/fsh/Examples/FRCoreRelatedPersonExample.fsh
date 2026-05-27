Instance: FRCoreRelatedPersonExample
InstanceOf: fr-core-related-person
Usage: #example
Description: "Exemple de ressource RelatedPerson pour décrire la mère d'un patient"
* extension[https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#FR "France (la)"
* identifier.system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier.value = "P98765"
* patient = Reference(FRCorePatientINSExample)
* relationship[Role].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
* relationship[Role].coding.code = #ECON
* relationship[Role].coding.display = "Personne à prévenir en cas d'urgence"
* relationship[RelationType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"
* relationship[RelationType].coding.code = #MTH
* relationship[RelationType].coding.display = "Mère"
* name.use = #official
* name.family = "Durand"
* name.given = "Marie"
* telecom.system = #phone
* telecom.value = "06 12 34 56 78"
* telecom.use = #mobile
* address.use = #home
* address.line = "12 rue des Lilas"
* address.city = "Paris"
* address.postalCode = "75020"
