Profile: FRCoreObservationOxygenSaturationProfile
Parent: $oxygensat
Id: fr-core-observation-saturation-oxygen
Title: "FR Core Observation Oxygen Saturation Profile"
Description: "Oxygen saturation in Arterial blood  | Saturation en oxygène du sang artériel"
* ^purpose = "Measurement of the oxygen saturation in the arterial blood | Mesure de la saturation en oxygène du sang artériel"
* . ^short = "French FHIR Oxygen Saturation Profile"
* . ^definition = "This french profile defines  how to represent Oxygen Saturation observations in FHIR using a standard LOINC code and UCUM units of measure | Ce profil français définit comment représenter la mesure de la saturation en oxygène au niveau su sang artériel, en utilisant LOINC et UCUM"

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-observation-saturation-oxygen)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfoAdministrationOxygen 0..1

* code.coding 1..

* partOf ..1 MS
* partOf only Reference(FRCoreMedicationAdministrationInhaledOxygenProfile)
* partOf ^definition = "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a MedicationAdministration. This observation can be related to a inhaled oxygen administration. The mesaurement of the oxygen satuation can't be done without knowing the administration of oxygen. [ Dans le cas où la mesure de la saturation en oxygène intervient en même temps que l'administration d'oxygène, cette mesure est liée dans un évènement plus large qui est l'administration de l'oxygène, via la relation partOf. Cet élément partOf doit être supporté par les implémentations."

* partOf.reference ^mustSupport = false
* subject only Reference(Patient or FRCorePatientProfile)
* encounter only Reference(Encounter or FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile)
* bodySite from $ValueSet-sPO2BodyLocationVS (example)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"

* value[x] ^slicing.rules = #open
