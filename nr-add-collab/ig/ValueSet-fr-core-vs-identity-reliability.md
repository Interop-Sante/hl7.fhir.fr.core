# FR Core ValueSet Identity reliability - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Identity reliability**

## ValueSet: FR Core ValueSet Identity reliability 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetIdentityReliabilityStatus |

 
The reliability of the identity. 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Définition logique (CLD)

Profil: [Shareable ValueSetversion : null4.0.1)](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include tous les codes définis dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445`](CodeSystem-fr-core-cs-v2-0445.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem v2-0445 v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-v2-0445.md)

Ce jeu de valeur (ValueSet) contient 21 concepts

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
  "id" : "fr-core-vs-identity-reliability",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetIdentityReliabilityStatus",
  "title" : "FR Core ValueSet Identity reliability",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:30:09+00:00",
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
  "description" : "The reliability of the identity.",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
      }
    ]
  }
}

```
