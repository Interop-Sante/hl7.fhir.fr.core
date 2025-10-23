Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace


Profile: FRCorePatientProfile
Parent: Patient
Id: fr-core-patient
Title: "FR Core Patient Profile"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    $patient-birthPlace named birthPlace 0..1

* extension[birthPlace].valueAddress only FRCoreAddressProfile