# FR Core ValueSet Encounter discharge disposition - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Encounter discharge disposition**

## ValueSet: FR Core ValueSet Encounter discharge disposition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-discharge-disposition | *Version*:2.2.0-ballot | |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:FRCoreValueSetEncounterDischargeDisposition |

 
Circonstances de sortie de l’hôpital. This value set defines a set of codes that can be used to where the patient left the hospital 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie`](CodeSystem-fr-core-cs-circonstances-sortie.md)version 📦2.2.0-ballot
* Inclut tous les codes définis dans [`http://terminology.hl7.org/CodeSystem/discharge-disposition`](http://terminology.hl7.org/7.0.0/CodeSystem-discharge-disposition.html)version 📦1.0.1

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem Discharge disposition v1.0.1 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-discharge-disposition.html)
* [codesystem FR Core CodeSystem Circonstances Sortie v2.2.0-ballot (CodeSystem)](CodeSystem-fr-core-cs-circonstances-sortie.md)

Ce jeu de valeur (ValueSet) contient 25 concepts

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
  "id" : "fr-core-vs-encounter-discharge-disposition",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fhir"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-discharge-disposition",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetEncounterDischargeDisposition",
  "title" : "FR Core ValueSet Encounter discharge disposition",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:44:22+00:00",
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
  "description" : "Circonstances de sortie de l'hôpital.\r\nThis value set defines a set of codes that can be used to where the patient left the hospital",
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
  "immutable" : true,
  "compose" : {
    "include" : [
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition"
      }
    ]
  }
}

```
