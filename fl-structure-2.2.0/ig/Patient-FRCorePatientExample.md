# FRCorePatientExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCorePatientExample**

## Example Patient: FRCorePatientExample

Profil: [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)

Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Actif : | true | Décédé : | false |
| Coordonnées | * ph: 01 23 24 67 89(Home)
* ph: 01 99 88 77 66(Work)
* ph: 06 80 55 34 33(Mobile)
* 367 rue Troussier, 45100 Orléans, France(home)
 | | |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | Ambléon | | |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445: VALI](CodeSystem-fr-core-cs-v2-0445.md#fr-core-cs-v2-0445-VALI) (Identité validée)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FRCorePatientExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress" : {
        "extension" : [
          {
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
              "code" : "01006"
            }
          }
        ],
        "city" : "Ambléon"
      }
    },
    {
      "extension" : [
        {
          "url" : "identityStatus",
          "valueCoding" : {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
            "code" : "VALI"
          }
        }
      ],
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INS-NIR"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.213.1.4.8",
      "value" : "123456789012244"
    }
  ],
  "active" : true,
  "name" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
          "valueString" : "Pierre Yves"
        }
      ],
      "use" : "official",
      "family" : "Durand",
      "given" : ["Pierre"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "01 23 24 67 89",
      "use" : "home"
    },
    {
      "system" : "phone",
      "value" : "01 99 88 77 66",
      "use" : "work",
      "rank" : 1
    },
    {
      "system" : "phone",
      "value" : "06 80 55 34 33",
      "use" : "mobile",
      "rank" : 2
    }
  ],
  "gender" : "male",
  "birthDate" : "1974-12-25",
  "deceasedBoolean" : false,
  "address" : [
    {
      "use" : "home",
      "type" : "both",
      "text" : "367 rue Troussier, 45100 Orléans, France",
      "line" : ["367 rue Troussier"],
      "city" : "Orléans",
      "postalCode" : "45100",
      "period" : {
        "start" : "2018-06-01"
      }
    }
  ]
}

```
