# FR Core ValueSet COG commune pays - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet COG commune pays**

## ValueSet: FR Core ValueSet COG commune pays 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-cog-commune-pays | *Version*:2.2.0-ballot |
| Active as of 2025-10-22 | *Computable Name*:FRCoreValueSetCOGCommunePays |

 
Value set town and country COG 

 **References** 

Ce jeu de valeurs nest pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R13-CommuneOM.html)version Not Stated (use latest from terminology server)
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R20-Pays.html)version 📦20250328120000

 

### Expansion

Expansion from smt.esante.gouv.fr based on:

* [codesystem TRE_R20_Pays v20250328120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R20-Pays.html)
* [system TRE_R13_CommuneOM v20240628120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R13-CommuneOM.html)

Ce jeu de valeurs (ValueSet) a 39,532 codes. Pour garder la publication gérable, seulement une selection (1,000 codes) de lensemble des codes est affiché.

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
  "id" : "fr-core-vs-cog-commune-pays",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
      "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-cog-commune-pays",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetCOGCommunePays",
  "title" : "FR Core ValueSet COG commune pays",
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
  "description" : "Value set town and country COG",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays"
      }
    ]
  }
}

```
