# FR Core ValueSet Patient contact role - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Patient contact role**

## ValueSet: FR Core ValueSet Patient contact role 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role | *Version*:2.2.0-ballot |
| Active as of 2025-11-14 | *Computable Name*:FRCoreValueSetPatientContactRole |

 
ValueSet patient contact role 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R260-HL7RoleClass.html)version 📦20240426120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R217-ProtectionJuridique.html)version 📦20231215120000
* Inclut ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://terminology.hl7.org/CodeSystem/v2-0131`](http://terminology.hl7.org/5.0.0/CodeSystem-v2-0131.html)version 📦2.1.0 

 

### Expansion

Ce jeu de valeur (ValueSet) contient 15 concepts

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
  "id" : "fr-core-vs-patient-contact-role",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPatientContactRole",
  "title" : "FR Core ValueSet Patient contact role",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-14T07:22:57+00:00",
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
  "description" : "ValueSet patient contact role",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "concept" : [
          {
            "code" : "O"
          },
          {
            "code" : "U"
          }
        ]
      }
    ]
  }
}

```
