# FRCorePatientDeceasedExample - Guide d'implémentation FR Core v2.2.0

##  Patient: FRCorePatientDeceasedExample

Profil: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

Jean Martin (official) Male, Date de Naissance :1950-03-10 ( Patient internal identifier: IPP-999-001 (use: usual, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Actif : | false | Décédé : | 2024-01-15 |
| [FR Core Lunar Date Extension](StructureDefinition-fr-core-lunar-date.md) | 1950-03-10 | | |
| [FR Core Patient Death Place Extension](StructureDefinition-fr-core-patient-death-place.md) | CHU de Paris, Paris, France | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FRCorePatientDeceasedExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place",
    "valueAddress" : {
      "text" : "CHU de Paris, Paris, France",
      "city" : "Paris",
      "postalCode" : "75014"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-lunar-date",
    "valueString" : "1950-03-10"
  }],
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }]
    },
    "system" : "http://hopital.fr/namingsystem/ipp",
    "value" : "IPP-999-001"
  }],
  "active" : false,
  "name" : [{
    "use" : "official",
    "family" : "Martin",
    "given" : ["Jean"]
  }],
  "gender" : "male",
  "birthDate" : "1950-03-10",
  "deceasedDateTime" : "2024-01-15"
}

```
