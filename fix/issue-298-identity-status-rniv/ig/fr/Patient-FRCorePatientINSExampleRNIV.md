# FRCorePatientINSExampleRNIV - Guide d'implémentation FR Core v2.2.0

## Exemple Patient: FRCorePatientINSExampleRNIV

-------

**French**

-------

Profil: [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

Jeanne Dark (official) Female, Date de Naissance :1960-05-30 ( NIR définitif (use: official, ))

-------

| | |
| :--- | :--- |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Domrémy-la-Pucelle |
| FR Core Patient Identity Reliability Extension: | * identityStatus: [FR Core CodeSystem Fiabilité Identité: QUAL](CodeSystem-fr-core-cs-identity-status.md#fr-core-cs-identity-status-QUAL) (Identité qualifiée)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FRCorePatientINSExampleRNIV",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "extension" : [{
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
        "valueCoding" : {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
          "code" : "88154"
        }
      }],
      "city" : "Domrémy-la-Pucelle"
    }
  },
  {
    "extension" : [{
      "url" : "identityStatus",
      "valueCoding" : {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status",
        "code" : "QUAL"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INS-NIR"
      }]
    },
    "system" : "urn:oid:1.2.250.1.213.1.4.8",
    "value" : "260058815400233"
  }],
  "name" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
      "valueString" : "Jeanne Marie Cécile"
    }],
    "use" : "official",
    "family" : "Dark",
    "given" : ["Jeanne"]
  }],
  "gender" : "female",
  "birthDate" : "1960-05-30"
}

```
