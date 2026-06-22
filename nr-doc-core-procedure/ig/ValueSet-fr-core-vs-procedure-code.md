# FR Core ValueSet Procedure code - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Procedure code**

## ValueSet: FR Core ValueSet Procedure code 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreValueSetProcedureCode |

 
Codes autorisés pour indiquer un acte. Inclut : 
* Terminologie CCAM
* NCIT (code C25218 : ‘Intervention’) si l’acte n’est pas trouvé dans CCAM
* CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.
 
Si aucun code approprié n’est disponible, l’acte peut être décrit en texte libre. 

 **References** 

* [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)

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
  "id" : "fr-core-vs-procedure-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetProcedureCode",
  "title" : "FR Core ValueSet Procedure code",
  "status" : "active",
  "date" : "2026-06-22T07:36:35+00:00",
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
  "description" : "Codes autorisés pour indiquer un acte.\nInclut :\n- Terminologie CCAM\n- NCIT (code C25218 : 'Intervention') si l'acte n'est pas trouvé dans CCAM\n- CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.\n\nSi aucun code approprié n'est disponible, l'acte peut être décrit en texte libre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-ccam",
      "version" : "v82.00"
    },
    {
      "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
      "concept" : [{
        "code" : "C25218"
      }]
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-procedure-cisis|20260420150249"]
    }]
  }
}

```
