# FRCorePatientINSExampleRNIV - Guide d'implémentation FR Core v2.2.0

## Exemple Patient: FRCorePatientINSExampleRNIV

-------

**French**

-------

Profil: [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

Jeanne Dark (official) Female, Date de Naissance :1960-05-30 ( Patient internal identifier: IPP-260-058 (use: usual, ))

-------

| | |
| :--- | :--- |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Domrémy-la-Pucelle |
| FR Core Patient Identity Reliability Extension: | * identityStatus: [FR Core CodeSystem Fiabilité Identité: PROV](CodeSystem-fr-core-cs-identity-status.md#fr-core-cs-identity-status-PROV) (Identité provisoire)
* comment: Identité non encore qualifiée
* comment: Identité vérifiée par le patient
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
        "code" : "PROV"
      }
    },
    {
      "url" : "comment",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment",
          "code" : "VIDE",
          "display" : "Identité non encore qualifiée"
        }]
      }
    },
    {
      "url" : "comment",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status-comment",
          "code" : "IDVER",
          "display" : "Identité vérifiée par le patient"
        }]
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
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
    "value" : "IPP-260-058"
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
