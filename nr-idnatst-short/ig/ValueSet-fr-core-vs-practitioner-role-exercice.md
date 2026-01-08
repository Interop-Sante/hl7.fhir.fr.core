# FR Core ValueSet PractitionerRole Exercice - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet PractitionerRole Exercice**

## ValueSet: FR Core ValueSet PractitionerRole Exercice 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice | *Version*:2.2.0-ballot |
| Active as of 2026-01-08 | *Computable Name*:FRCoreValueSetPractitionerRoleExercice |

 
The exercice(s) of the practitioner. 

 **References** 

* [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)

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
  "id" : "fr-core-vs-practitioner-role-exercice",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPractitionerRoleExercice",
  "title" : "FR Core ValueSet PractitionerRole Exercice",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-08T13:12:39+00:00",
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
  "description" : "The exercice(s) of the practitioner.",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R96-AutreFonctionSanitaire/FHIR/TRE-R96-AutreFonctionSanitaire"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R32-StatutHospitalier/FHIR/TRE-R32-StatutHospitalier"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R06-SectionTableauCNOP/FHIR/TRE-R06-SectionTableauCNOP"
      }
    ]
  }
}

```
