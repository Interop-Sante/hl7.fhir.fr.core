# Blood Pressure Measurement Body Location Precoordinated value set - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure Measurement Body Location Precoordinated value set**

## ValueSet: Blood Pressure Measurement Body Location Precoordinated value set 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-body-location | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreValueSetBloodPressureMeasurementBodyLocation |

 
SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured. 

 **References** 

Ce jeu de valeurs nest pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`http://snomed.info/sct`](http://www.snomed.org/)version Non précisé (utilise la dernière version provenant du serveur de terminologie)

 

### Expansion

Expansion de smt.esante.gouv.fr basée sur SNOMED CT édition 11000315107 21-Jun 2025

Ce jeu de valeur (ValueSet) contient 18 concepts

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
  "id" : "fr-core-vs-bp-meas-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-body-location",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetBloodPressureMeasurementBodyLocation",
  "title" : "Blood Pressure Measurement Body Location Precoordinated value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T09:22:15+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured.",
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
        "concept" : [
          {
            "code" : "49256001",
            "display" : "Structure of dorsal digital artery of foot (body structure)"
          },
          {
            "code" : "368469003",
            "display" : "Structure of proper volar digital arteries (body structure)"
          },
          {
            "code" : "17137000",
            "display" : "Structure of brachial artery (body structure)"
          },
          {
            "code" : "723961002",
            "display" : "Structure of left brachial artery (body structure)"
          },
          {
            "code" : "723962009",
            "display" : "Structure of right brachial artery (body structure)"
          },
          {
            "code" : "7657000",
            "display" : "Structure of femoral artery (body structure)"
          },
          {
            "code" : "113270003",
            "display" : "Structure of left femoral artery (body structure)"
          },
          {
            "code" : "69833005",
            "display" : "Structure of right femoral artery (body structure)"
          },
          {
            "code" : "45631007",
            "display" : "Structure of radial artery (body structure)"
          },
          {
            "code" : "368504007",
            "display" : "Structure of left radial artery (body structure)"
          },
          {
            "code" : "368503001",
            "display" : "Structure of right radial artery (body structure)"
          },
          {
            "code" : "13363002",
            "display" : "Structure of posterior tibial artery (body structure)"
          },
          {
            "code" : "214912001",
            "display" : "Structure of left posterior tibial artery (body structure)"
          },
          {
            "code" : "214811007",
            "display" : "Structure of right posterior tibial artery (body structure)"
          },
          {
            "code" : "54247002",
            "display" : "Ascending aorta structure (body structure)"
          },
          {
            "code" : "281130003",
            "display" : "Descending aorta structure (body structure)"
          },
          {
            "code" : "57034009",
            "display" : "Aortic arch structure (body structure)"
          },
          {
            "code" : "7832008",
            "display" : "Abdominal aorta structure (body structure)"
          }
        ]
      }
    ]
  }
}

```
