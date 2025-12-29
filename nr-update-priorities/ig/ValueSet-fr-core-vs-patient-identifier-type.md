# FR Core ValueSet Patient identifier type - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Patient identifier type**

## ValueSet: FR Core ValueSet Patient identifier type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-type | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreValueSetPatientIdentifierType |

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient). 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPatientIdentifierType",
  "title" : "FR Core ValueSet Patient identifier type",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-29T10:13:00+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "concept" : [
          {
            "code" : "PPN",
            "display" : "Passport Number"
          },
          {
            "code" : "PN",
            "display" : "Person Number"
          },
          {
            "code" : "PI",
            "display" : "Patient Identifier"
          },
          {
            "code" : "RRI",
            "display" : "Regional Registry ID"
          },
          {
            "code" : "NH",
            "display" : "Numéro de sécurité sociale"
          }
        ]
      },
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "concept" : [
          {
            "code" : "NNFRA",
            "display" : "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code"
          },
          {
            "code" : "NDP",
            "display" : "Identifiant du patient au Dossier Pharmaceutique"
          },
          {
            "code" : "INS-C",
            "display" : "Identifiant National de Santé Calculé"
          },
          {
            "code" : "INS-NIA",
            "display" : "NIR temporaire"
          },
          {
            "code" : "INS-NIR",
            "display" : "NIR définitif"
          }
        ]
      }
    ]
  }
}

```
