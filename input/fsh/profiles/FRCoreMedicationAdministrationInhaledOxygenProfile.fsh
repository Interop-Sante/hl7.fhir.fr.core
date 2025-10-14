Profile: FRCoreMedicationAdministrationInhaledOxygenProfile
Parent: MedicationAdministration
Id: fr-core-medication-administration-inhaled-oxygen
Title: "FR Core Medication Administration Inhaled Oxygen Profile"
Description: "Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation.\r\n
Profil se basant sur la ressource Medication Administration pour indiquer l'oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d'oxygène via une ventilation mécanique."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-medication-administration-inhaled-oxygen)

* medication[x] only CodeableConcept
* medication[x].coding 1..1
* medication[x].coding.system 1..
* medication[x].coding.system = "http://snomed.info/sct" (exactly)
* medication[x].coding.code 1..
* medication[x].coding.code = #767111007 (exactly)
* medication[x].coding.code ^short = "Product containing oxygen (medicinal product) | Administration d'oxygène"
* subject only Reference(FRCorePatientProfile)
* performer.actor only Reference(RelatedPerson or Device or FRCorePractitionerProfile or PractitionerRole or FRCorePatientProfile)