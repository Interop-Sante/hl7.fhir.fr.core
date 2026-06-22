# FR Core ValueSet EDQM - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet EDQM**

## ValueSet: FR Core ValueSet EDQM 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreValueSetEDQM |

 
Formes galéniques issues du CodeSystem EDQM fourni par le SMT (classe PDF). 

 **References** 

* [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)
* [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md)
* [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md)
* [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)
* [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "fr-core-vs-edqm",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEDQM",
  "title" : "FR Core ValueSet EDQM",
  "status" : "active",
  "date" : "2026-06-22T14:38:01+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Formes galéniques issues du CodeSystem EDQM fourni par le SMT (classe PDF).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "version" : "2025-03-19",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "PDF"
      }]
    }]
  }
}

```
