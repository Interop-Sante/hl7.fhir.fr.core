# FR Core ValueSet Medication translation - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Medication translation**

## ValueSet: FR Core ValueSet Medication translation 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreValueSetMedicationTranslation |

 
Systèmes de codification autorisés pour les médicaments : CIP, UCD, ATC, MV (médicament virtuel) et NUVA (vaccins). 

 **References** 

* [FR Core Immunization Profile](StructureDefinition-fr-core-immunization.md)

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
  "id" : "fr-core-vs-medication-translation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetMedicationTranslation",
  "title" : "FR Core ValueSet Medication translation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-22T14:39:52+00:00",
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
  "description" : "Systèmes de codification autorisés pour les médicaments : CIP, UCD, ATC, MV (médicament virtuel) et NUVA (vaccins).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "version" : "2026-05-05"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-cip_ucd"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-atc",
      "version" : "2026-02"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-medicabase"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-nuva/"
    }]
  }
}

```
