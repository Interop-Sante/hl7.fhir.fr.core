# FR Core ValueSet PractitionerRole Exercice - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet PractitionerRole Exercice**

## ValueSet: FR Core ValueSet PractitionerRole Exercice 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreValueSetPractitionerRoleExercice |

 
The exercice(s) of the practitioner. 

 **References** 

* [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R21-Fonction.html)version 📦20251023120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R96-AutreFonctionSanitaire/FHIR/TRE-R96-AutreFonctionSanitaire`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R96-AutreFonctionSanitaire.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R85-RolePriseCharge.html)version 📦20250919120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R22-GenreActivite.html)version 📦20240329120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R23-ModeExercice.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R24-TypeActiviteLiberale.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R32-StatutHospitalier/FHIR/TRE-R32-StatutHospitalier`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R32-StatutHospitalier.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R24-TypeActiviteLiberale.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-G05-SousSectionTableauCNOP.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R06-SectionTableauCNOP/FHIR/TRE-R06-SectionTableauCNOP`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R06-SectionTableauCNOP.html)version 📦20231215120000

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem TRE_G05_SousSectionTableauCNOP v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-G05-SousSectionTableauCNOP.html)
* [codesystem TRE_R06_SectionTableauCNOP v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R06-SectionTableauCNOP.html)
* [codesystem TRE_R21_Fonction v20251023120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R21-Fonction.html)
* [codesystem TRE_R22_GenreActivite v20240329120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R22-GenreActivite.html)
* [codesystem TRE_R23_ModeExercice v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R23-ModeExercice.html)
* [codesystem TRE_R24_TypeActiviteLiberale v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R24-TypeActiviteLiberale.html)
* [codesystem TRE_R32_StatutHospitalier v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R32-StatutHospitalier.html)
* [codesystem TRE_R85_RolePriseCharge v20250919120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R85-RolePriseCharge.html)
* [codesystem TRE_R96_AutreFonctionSanitaire v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R96-AutreFonctionSanitaire.html)

Ce jeu de valeur (ValueSet) contient 206 concepts

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
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetPractitionerRoleExercice",
  "title" : "FR Core ValueSet PractitionerRole Exercice",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-02T21:43:16+00:00",
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
