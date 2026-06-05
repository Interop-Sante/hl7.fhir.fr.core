# FR Core ValueSet Identity Reliability INS Status - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Identity Reliability INS Status**

## ValueSet: FR Core ValueSet Identity Reliability INS Status 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability-ins-status | *Version*:2.2.0 |
| Active as of 2026-06-05 | *Computable Name*:FRCoreValueSetIdentityReliabilityINSStatus |

 
Les 4 statuts de confiance de l’identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres. 

| | | | |
| :--- | :--- | :--- | :--- |
| PROV | Identité provisoire | − | − |
| RECUP | Identité récupérée | + | − |
| VALI | Identité validée | − | + |
| QUAL | Identité qualifiée | + | + |

 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

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
  "id" : "fr-core-vs-identity-reliability-ins-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability-ins-status",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityReliabilityINSStatus",
  "title" : "FR Core ValueSet Identity Reliability INS Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-05T12:16:59+00:00",
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
  "description" : "Les 4 statuts de confiance de l'identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres.\n\n| Code | Statut RNIV | INSi (I) | Contrôle (C) |\n|---|---|---|---|\n| PROV | Identité provisoire | − | − |\n| RECUP | Identité récupérée | + | − |\n| VALI | Identité validée | − | + |\n| QUAL | Identité qualifiée | + | + |",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "PROV",
        "display" : "Identité provisoire"
      },
      {
        "code" : "RECUP",
        "display" : "Identité récupérée"
      },
      {
        "code" : "VALI",
        "display" : "Identité validée"
      },
      {
        "code" : "QUAL",
        "display" : "Identité qualifiée"
      }]
    }]
  }
}

```
