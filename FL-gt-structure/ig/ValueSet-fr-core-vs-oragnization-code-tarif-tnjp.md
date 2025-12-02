# FR Core ValueSet Codes Tarifs - nomenclature TNJP - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Codes Tarifs - nomenclature TNJP**

## ValueSet: FR Core ValueSet Codes Tarifs - nomenclature TNJP 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-oragnization-code-tarif-tnjp | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreValueSetOrganizationCodeTarifTNJP |

 
Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations). 

 **References** 

* [FR Core Organization Extension - Tarif Soin](StructureDefinition-fr-core-organization-tarif.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include tous les codes définis dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp`](CodeSystem-fr-core-cs-code-tarif-tnjp.md)version 📦2.2.0-ballot

 

### Expansion

Expansion effectuée en interne basée sur [codesystem FR Core CodeSystem Codes Tarifs - nomenclature TNJP v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-code-tarif-tnjp.md)

Ce jeu de valeur (ValueSet) contient 43 concepts

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
  "id" : "fr-core-vs-oragnization-code-tarif-tnjp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-oragnization-code-tarif-tnjp",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetOrganizationCodeTarifTNJP",
  "title" : "FR Core ValueSet Codes Tarifs - nomenclature TNJP",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-02T20:15:58+00:00",
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
  "description" : "Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations).",
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp"
      }
    ]
  }
}

```
