# FR Core ValueSet Mode validation identity - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Mode validation identity**

## ValueSet: FR Core ValueSet Mode validation identity 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetModeValidationIdentity |

 
The validation mode of the identity. 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include tous les codes définis dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity`](CodeSystem-fr-core-cs-mode-validation-identity.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem Mode Validation Identite v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-mode-validation-identity.md)

Ce jeu de valeur (ValueSet) contient 13 concepts

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
  "id" : "fr-core-vs-mode-validation-identity",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetModeValidationIdentity",
  "title" : "FR Core ValueSet Mode validation identity",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T17:11:23+00:00",
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
  "description" : "The validation mode of the identity.",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity"
      }
    ]
  }
}

```
