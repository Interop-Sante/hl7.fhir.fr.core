Extension: FRCorePatientContactRelationshipCategoryExtension
Id: fr-core-patient-contact-relationship-category
Title: "FR Core Patient Contact Relationship Category Extension"
Description: "Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)"
Context: Patient.contact.relationship

* value[x] only code
* valueCode from FRCoreValueSetPatientContactRelationshipCategory (required)
