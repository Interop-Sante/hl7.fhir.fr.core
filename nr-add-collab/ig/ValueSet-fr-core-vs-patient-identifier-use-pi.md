# FR Core ValueSet Patient identifier use PI - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Patient identifier use PI**

## ValueSet: FR Core ValueSet Patient identifier use PI 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-pi | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetPatientIdentifierUsePI |

 
Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP). Authorized use for PI identifier. 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Importe tous les codes contenu dans [IdentifierUse](http://hl7.org/fhir/R4/valueset-identifier-use.html)

Ce jeu de valeur (ValueSet) exclut les codes selon les règles suivantes :

* Exclut ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://hl7.org/fhir/identifier-use`](http://hl7.org/fhir/R4/codesystem-identifier-use.html)version 📦4.0.1

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem IdentifierUse v4.0.1 (CodeSystem)](http://hl7.org/fhir/R4/codesystem-identifier-use.html)
* [valueset IdentifierUse v4.0.1 (ValueSet)](http://hl7.org/fhir/R4/valueset-identifier-use.html)

Ce jeu de valeur (ValueSet) contient 4 concepts

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
  "id" : "fr-core-vs-patient-identifier-use-pi",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-pi",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPatientIdentifierUsePI",
  "title" : "FR Core ValueSet Patient identifier use PI",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:27:25+00:00",
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
  "description" : "Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP).\r\nAuthorized use for PI identifier.",
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
        "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"]
      }
    ],
    "exclude" : [
      {
        "system" : "http://hl7.org/fhir/identifier-use",
        "concept" : [
          {
            "code" : "official"
          }
        ]
      }
    ]
  }
}

```
