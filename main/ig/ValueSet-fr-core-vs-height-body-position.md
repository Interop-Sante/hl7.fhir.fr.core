# FR Core ValueSet BodyPosition - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet BodyPosition**

## ValueSet: FR Core ValueSet BodyPosition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-body-position | *Version*:2.2.0-ballot |
| Active as of 2025-10-22 | *Computable Name*:FRCoreValueSetHeightBodyPosition |

 
ValueSet Body Position 

 **References** 

* [FR Core Observation Height Body Position Extension](StructureDefinition-fr-core-observation-height-body-position.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut codes provenant de[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) où concept is-a 10904000 (position debout)
* Inclut codes provenant de[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) où concept is-a 102538003 (position allongée)

 

### Expansion

Expansion from smt.esante.gouv.fr based on SNOMED CT 11000315107 edition 21-Jun 2025

Lexpension de ce jeu de valeurs (ValueSet) contient {0} concepts.

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
  "id" : "fr-core-vs-height-body-position",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-body-position",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetHeightBodyPosition",
  "title" : "FR Core ValueSet BodyPosition",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-22T14:21:04+00:00",
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
  "description" : "ValueSet Body Position",
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
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "10904000"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "102538003"
          }
        ]
      }
    ]
  }
}

```
